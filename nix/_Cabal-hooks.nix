{
  "3.14" = {
    sha256 = "a76870cefc2fd723306f92d3500704e23d2c580a09dcea963d36a9d22338473a";
    revisions = {
      r0 = {
        nix = import ../hackage/Cabal-hooks-3.14-r0-6d7cd57c7c70b2c90b2f2e818efcd0bdaaae14309b784643c1b284e69a0bb6db.nix;
        revNum = 0;
        sha256 = "6d7cd57c7c70b2c90b2f2e818efcd0bdaaae14309b784643c1b284e69a0bb6db";
      };
      default = "r0";
    };
  };
  "3.16" = {
    sha256 = "59ba20b258fad4a3621c9c7f5513ba052667d091bb674b3829cc131de4df48e8";
    revisions = {
      r0 = {
        nix = import ../hackage/Cabal-hooks-3.16-r0-5793081368a2fda03bafea70eb7b97bc347d84b614f762bd88e58f1cf3f7bbce.nix;
        revNum = 0;
        sha256 = "5793081368a2fda03bafea70eb7b97bc347d84b614f762bd88e58f1cf3f7bbce";
      };
      default = "r0";
    };
  };
}