class NavResult {
  static const OK = 1;
  static const PAYMENT_OK = 2;
  static const ERROR = -2;
  static const NONE = -1;
  static const CANCEL = 0;

  ///region result codes
  static const ONLINE_CARD_RESULT_OK = 101;
  static const CONFIRM_PHONE_RESULT_OK = 102;
  static const TRANSFER_SOURCE_CARD_RESULT_OK = 103;
  static const SEARCH_ADDRESS_RESULT_OK = 104;
  static const CONFIRM_SMS_CODE_OLD_RESULT_OK = 105;
  static const CONFIRM_SMS_CODE_NEW_RESULT_OK = 106;
  static const BONUSES_SPEND_RESULT_OK = 107;
  static const CONFIRM_SMS_CODE_ROLLOVER_OFFER_RESULT_OK = 108;
  static const CONFIRM_ROLLOVER_RESULT_OK = 109;
  static const CONFIRM_SMS_CODE_RESTRUCTURING_RESULT_OK = 110;
  static const CONFIRM_RESTRUCTURING_RESULT_OK = 111;
  static const CONFIRM_REFINANCE_RESULT_OK = 112;
  static const SEARCH_NAME_RESULT_OK = 113;
  static const CONFIRM_SMS_CODE_REGISTRATION_RESULT_OK = 114;
  static const CHANGE_PHONE_REGISTRATION_RESULT_OK = 115;
  static const CONFIRM_SMS_CODE_DECISION_RESULT_OK = 116;
  static const CONFIRM_CHANGE_PHONE_DECISION_RESULT_OK = 117;
  static const SEARCH_PASSPORT_AUTHORITY_RESULT_OK = 118;
  static const CHANGE_PASSPORT_PROFILE_RESULT_OK = 119;
  static const CHANGE_EMAIL_PROFILE_RESULT_OK = 120;
  static const IGNORE_MAIN_SCREEN_REFRESH = 121;
  static const REFRESH_SCREEN = 122;
  static const CNP_SERVICE_FAIL = 123;
  static const PIN_CODE_BACK = 124;
  static const REFRESH_REPAY_SCREEN = 125;
  static const BLOCK_CARD_SUCCESS = 126;
  static const UNBLOCK_CARD_SUCCESS = 127;
  static const SAVED_PROFILE_DATA_RESULT_OK = 128;
  static const ADD_CNP_CARD = 129;
  static const UPDATE_BONUSES = 130;
  static const REFRESH_NOTIFICATIONS = 131;
  static const SUCCESSFUL_TRANSFER = 132;
  static const UNSUCCESSFUL_TRANSFER = 133;
  static const CREDIT_HISTORY_SUCCESS = 134;
  static const CREDIT_HISTORY_FAIL = 135;
  static const CREDIT_POTENTIAL_SIGNED_SUCCESSFULLY = 136;

  static const SUCCESSFUL_PAYMENT_QIWI = 137;
  static const START_AGAIN_QIWI_PAYMENT = 138;
  static const PASSWORD_RECOVERY_RESULT = 139;
  static const APPLIED_ANALISYS_PAYMENTS_FILTER = 140;
  static const USER_ALREADY_EXIST_EXCEPTION = 141;
  static const SAVE_CARD_CNP = 142;
  static const SAVE_CARD_CNP_ERROR = 143;
  static const P2P_TRANSFER_FAIL = 144;
  static const P2P_TRANSFER_SUCCESS = 145;
  static const P2P_TRANSFER_BACK = 146;
  static const TRANSFER_BORROWED_FUNDS_ERROR = 147;

  ///endregion
  final int code;
  final dynamic value;

  NavResult({
    this.code = NONE,
    this.value,
  });
}
