{
  "0.0.0" = {
    sha256 = "0f7c054a98d1df1a61740f6ebce4691367154c783eb17a063820584f891891b2";
    revisions = {
      r0 = {
        nix = import ../hackage/heidi-0.0.0-r0-8675a63cad8a02b1c690f2dc03433a9c8047a85647e37233791c274673a53b74.nix;
        revNum = 0;
        sha256 = "8675a63cad8a02b1c690f2dc03433a9c8047a85647e37233791c274673a53b74";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "15c972d13accb61871f711782ee46d7e8b068c8a12912dabacb98f892faa8ad0";
    revisions = {
      r0 = {
        nix = import ../hackage/heidi-0.1.0-r0-5c5f9228ca6f8c462992036c3a4c59285ee7c4898e86d634905af51ca1365a67.nix;
        revNum = 0;
        sha256 = "5c5f9228ca6f8c462992036c3a4c59285ee7c4898e86d634905af51ca1365a67";
      };
      r1 = {
        nix = import ../hackage/heidi-0.1.0-r1-5949d5660696b4a7afed599f9cc43799663b7bfe432f21c18030afd627347d39.nix;
        revNum = 1;
        sha256 = "5949d5660696b4a7afed599f9cc43799663b7bfe432f21c18030afd627347d39";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "77da9755537a76a3b1ef4090998e78f89a3d33b969cd415e40fcae9fd0e14adb";
    revisions = {
      r0 = {
        nix = import ../hackage/heidi-0.2.0-r0-e3935d84a8634d5ef17117dae76f7024c3ba2c34f6cd2440478d8b8637151553.nix;
        revNum = 0;
        sha256 = "e3935d84a8634d5ef17117dae76f7024c3ba2c34f6cd2440478d8b8637151553";
      };
      default = "r0";
    };
  };
  "0.3.0" = {
    sha256 = "5694da1c9806fb4376f91706ec3b90c7e09b5fef3bc57045df9118e79027dba4";
    revisions = {
      r0 = {
        nix = import ../hackage/heidi-0.3.0-r0-e7ff4820273715b8b5969619b992d4a3680db3844d73e8c26d61067aa03e221f.nix;
        revNum = 0;
        sha256 = "e7ff4820273715b8b5969619b992d4a3680db3844d73e8c26d61067aa03e221f";
      };
      default = "r0";
    };
  };
}