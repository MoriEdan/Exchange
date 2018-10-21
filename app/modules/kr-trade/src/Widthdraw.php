<?php

class Widthdraw extends MySQL {

  private $WidthdrawMethod = [
    "paypal" => [
      "fields" => ["paypal_email" => "Paypal email"],
      "type" => "currency",
      "name" => "Paypal",
      "preview" => ['paypal_email']
    ],
    "banktransfert" => [
      "fields" => [
        "bank_name" => "Bank name",
        "bank_address" => "Bank address",
        "bank_city" => "Bank city",
        "bank_country" => "Bank country",
        "iban" => "Bank account number / IBAN",
        "swift_code" => "SWIFT code",
        "first_last_name" => "Your first and last name",
        "address" => "Your address",
        "country" => "Your country",
        "city" => "Your city"
      ],
      "type" => "currency",
      "name" => "Bank transfert",
      "preview" => ['iban', 'swift_code']
    ],
    "cryptocurrencies" => [
      "fields" => [
        "cryptocurrency_name" => "Cryptocurrency name",
        "address" => "Address"
      ],
      "type" => "crypto",
      "name" => "Wallet",
      "preview" => ['cryptocurrency_name', 'address']
    ]
  ];

  private $User = null;

  public function __construct($User = null){

    if(!is_null($User)) $this->User = $User;

  }

  public function _getUser(){
    return $this->User;
  }

  public function _setUser($User){ $this->User = $User; }

  public function _getWidthdrawMethod($type = 'all'){
    if($type == 'all') return $this->WidthdrawMethod;
    $r = [];
    foreach ($this->WidthdrawMethod as $key => $value) {
      $r[$key] = $value;
    }
    return $r;
  }

  public function _getListWidthdraw($type = 'all'){

    if($type == 'all') $r = parent::querySqlRequest("SELECT * FROM user_widthdraw_krypto WHERE id_user=:id_user", ['id_user' => $this->_getUser()->_getUserID()]);
    if($type != 'all') $r = parent::querySqlRequest("SELECT * FROM user_widthdraw_krypto WHERE id_user=:id_user AND type_user_widthdraw=:type_user_widthdraw", ['id_user' => $this->_getUser()->_getUserID(), 'type_user_widthdraw' => $type]);

    $withdrawList = [];
    foreach ($r as $key => $value) {

      if(!array_key_exists($value['type_user_widthdraw'], $this->WidthdrawMethod)) continue;

      $withdrawList[$value['id_user_widthdraw']] = [
        'type' => $value['type_user_widthdraw'],
        'infos' => json_decode($value['value_user_widthdraw'], true),
        'date' => $value['date_user_widthdraw'],
        'id' => $value['id_user_widthdraw'],
        "structure" => $this->WidthdrawMethod[$value['type_user_widthdraw']]
      ];
    }

    return $withdrawList;

  }

  public function _initNew($type, $data){

    if(!array_key_exists($type, $this->_getWidthdrawMethod())) throw new Exception("Widthdraw method unknown", 1);

    $ConfigurationWidthdrawMethod = $this->_getWidthdrawMethod()[$type];

    $fieldFormated = [];
    foreach ($ConfigurationWidthdrawMethod['fields'] as $filedKey => $fieldName) {
      if(!array_key_exists($filedKey, $data)) throw new Exception("Error : Field missing", 1);

      if($filedKey == "iban"){
        $iban = new CMPayments\IBAN($data[$filedKey]);
        if (!$iban->validate($error)) throw new Exception($error, 1);

      }


      $fieldFormated[$filedKey] = $data[$filedKey];
    }

    $r = parent::execSqlRequest("INSERT INTO user_widthdraw_krypto (type_user_widthdraw, value_user_widthdraw, date_user_widthdraw, id_user)
                                VALUES (:type_user_widthdraw, :value_user_widthdraw, :date_user_widthdraw, :id_user)",
                                [
                                  'type_user_widthdraw' => $type,
                                  'value_user_widthdraw' => json_encode($fieldFormated),
                                  'date_user_widthdraw' => time(),
                                  'id_user' => $this->_getUser()->_getUserID()
                                ]);

    if(!$r) throw new Exception("Error : Fail to add widthdraw method", 1);


  }

  public function _removeWidthdrawMethod($id){
    $r = parent::execSqlRequest("DELETE FROM user_widthdraw_krypto WHERE id_user=:id_user AND id_user_widthdraw=:id_user_widthdraw",
                                [
                                  'id_user_widthdraw' => $id,
                                  'id_user' => $this->_getUser()->_getUserID()
                                ]);
    if(!$r) throw new Exception("Error : Fail to remove withdraw method", 1);

    return true;
  }

  public function _getInformationWithdrawMethod($id){
    $r = parent::querySqlRequest("SELECT * FROM user_widthdraw_krypto WHERE id_user_widthdraw=:id_user_widthdraw",
                                [
                                  'id_user_widthdraw' => $id
                                ]);
    if(count($r) == 0) return false;
    return $r[0];
  }

  public function _getWithdrawData($data){
    error_log(json_encode($data));
    $line = [];
    $dateWithdraw = json_decode($data['value_user_widthdraw'], true);
    foreach ($dateWithdraw as $key => $value) {
      $line[$this->WidthdrawMethod[$data['type_user_widthdraw']]['fields'][$key]] = $value;
    }

    return $line;
  }

}

?>
