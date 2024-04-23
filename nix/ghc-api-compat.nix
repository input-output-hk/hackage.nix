{
  "8.10.5" = {
    sha256 = "7ae0a6c857468990a9bd2d63b4d616d3d031179a1026eb45185afefdcf24e025";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-api-compat-8.10.5-r0-15da3e623e00a93f3a1ffd0a7988c404d9c6505817aed0fe522f511b8eb22d96.nix;
        revNum = 0;
        sha256 = "15da3e623e00a93f3a1ffd0a7988c404d9c6505817aed0fe522f511b8eb22d96";
      };
      default = "r0";
    };
  };
  "8.10.6" = {
    sha256 = "5f6ec13c2ab04f13e83030f3c2cd981369e8ed6def49b633e2e69c6d8c503cff";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-api-compat-8.10.6-r0-cde370b1b4c8a090de1ba6a8e27f65def9af43ca88710b412a6545b876568626.nix;
        revNum = 0;
        sha256 = "cde370b1b4c8a090de1ba6a8e27f65def9af43ca88710b412a6545b876568626";
      };
      default = "r0";
    };
  };
  "8.10.7" = {
    sha256 = "4a183fff20eccdedd50f5ea440578c88df0634c1a7d030ab8d445e4086a79aeb";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-api-compat-8.10.7-r0-c7f56849665ab1a02e0cd2c8b1d6e539fe3930cbf3c9dce511e3189ce8e15fad.nix;
        revNum = 0;
        sha256 = "c7f56849665ab1a02e0cd2c8b1d6e539fe3930cbf3c9dce511e3189ce8e15fad";
      };
      default = "r0";
    };
  };
  "8.6" = {
    sha256 = "7a70211154601ec88cb1acc4e4c69f023a4258bbbb23e3e13bdf25977159b6df";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-api-compat-8.6-r0-18f82e25aac57ad16c5f92a2f7b769048c5251bb707f68745ed1b91cbc19dce4.nix;
        revNum = 0;
        sha256 = "18f82e25aac57ad16c5f92a2f7b769048c5251bb707f68745ed1b91cbc19dce4";
      };
      r1 = {
        nix = import ../hackage/ghc-api-compat-8.6-r1-d6ffe14ea8b1f23aef1526f4fb6033158a281a39679a2ebf4524585406822606.nix;
        revNum = 1;
        sha256 = "d6ffe14ea8b1f23aef1526f4fb6033158a281a39679a2ebf4524585406822606";
      };
      default = "r1";
    };
  };
  "9.0.1" = {
    sha256 = "b325ac11ef1838afd93483a93ef816cf6c7cd5c997622343d357b234990e4b16";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-api-compat-9.0.1-r0-3028224ff271458c93b4c2083d2adac96dd4eb2099a497accb040d9523a095dd.nix;
        revNum = 0;
        sha256 = "3028224ff271458c93b4c2083d2adac96dd4eb2099a497accb040d9523a095dd";
      };
      default = "r0";
    };
  };
}