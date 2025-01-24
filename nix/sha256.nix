{
  "0.1.0.0" = {
    sha256 = "e3f8f0f4b12028cef96fd1fb1ae822979e8dd24faabfdcf5822b21bc94f966ba";
    revisions = {
      r0 = {
        nix = import ../hackage/sha256-0.1.0.0-r0-9a64a152855e933896f847268d1865fe668c7b8bec2243e8859b082648b241ec.nix;
        revNum = 0;
        sha256 = "9a64a152855e933896f847268d1865fe668c7b8bec2243e8859b082648b241ec";
      };
      r1 = {
        nix = import ../hackage/sha256-0.1.0.0-r1-fbd40ccec8bf3de58c71438306b48c368cb1a7e34e32b68534e690c674c3b93e.nix;
        revNum = 1;
        sha256 = "fbd40ccec8bf3de58c71438306b48c368cb1a7e34e32b68534e690c674c3b93e";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "5320320d23fbfb20ed6da85994535316035239997085e61778d71863e6c2bad9";
    revisions = {
      r0 = {
        nix = import ../hackage/sha256-0.1.0.1-r0-dde1bbd8427f00e52bb58890e76cb2366433440210bfa9c7d1dcfdef2a34ba92.nix;
        revNum = 0;
        sha256 = "dde1bbd8427f00e52bb58890e76cb2366433440210bfa9c7d1dcfdef2a34ba92";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "09f25a4086a0a44424f9cee6d66d32abcf7256132e1c63d11b0bb711dc0afb7b";
    revisions = {
      r0 = {
        nix = import ../hackage/sha256-0.1.0.2-r0-844218f08e2da95a5dce7359f6b7fd02e58aa6bb07596c48cc4bc4980537f4f8.nix;
        revNum = 0;
        sha256 = "844218f08e2da95a5dce7359f6b7fd02e58aa6bb07596c48cc4bc4980537f4f8";
      };
      default = "r0";
    };
  };
}