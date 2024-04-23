{
  "0.3.0" = {
    sha256 = "74237c48eca280d0b029b5c8cb4824828c754c6a8da72a53aa6b375b119e28c7";
    revisions = {
      r0 = {
        nix = import ../hackage/FULE-0.3.0-r0-aadfa31efdae06e71b52b6f6eef96f80fe08f719cbc073352f841ebc5ecbceae.nix;
        revNum = 0;
        sha256 = "aadfa31efdae06e71b52b6f6eef96f80fe08f719cbc073352f841ebc5ecbceae";
      };
      r1 = {
        nix = import ../hackage/FULE-0.3.0-r1-3921d9b081ccfb977cde78a083c7e8c023844bed726dd2e8d0f3ebec1a66749e.nix;
        revNum = 1;
        sha256 = "3921d9b081ccfb977cde78a083c7e8c023844bed726dd2e8d0f3ebec1a66749e";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "afa729ddb521fd668813b276211f8c9337fe291a8a2f73a9fc4c73dba7654d40";
    revisions = {
      r0 = {
        nix = import ../hackage/FULE-0.3.1-r0-7e5146c6829f06023005c59b9a88f90be1c6851749e0740a1d7e1d99c634bcf3.nix;
        revNum = 0;
        sha256 = "7e5146c6829f06023005c59b9a88f90be1c6851749e0740a1d7e1d99c634bcf3";
      };
      default = "r0";
    };
  };
}