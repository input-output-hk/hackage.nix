{
  "0.1.0.0" = {
    sha256 = "a58cb5effcc118ecb77f7889aea182eb81cfa50baa50095420564ee8dc52ddd5";
    revisions = {
      r0 = {
        nix = import ../hackage/word-0.1.0.0-r0-328d5d81548a1dae31dd4605a77eca7df3836d423c20fde5a6ca1e26a064a24c.nix;
        revNum = 0;
        sha256 = "328d5d81548a1dae31dd4605a77eca7df3836d423c20fde5a6ca1e26a064a24c";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "0e1b24a202f468758f8db67d37f4a261cc9c1b919e4ee180ac6de988f8f8f0cc";
    revisions = {
      r0 = {
        nix = import ../hackage/word-0.1.0.1-r0-0a4a1896cff49a1f09b8b560802571502df7af3ef8728744a3e92fde20fc9ea9.nix;
        revNum = 0;
        sha256 = "0a4a1896cff49a1f09b8b560802571502df7af3ef8728744a3e92fde20fc9ea9";
        };
      r1 = {
        nix = import ../hackage/word-0.1.0.1-r1-81b75d6ca308687aa14d937ea0adb61120871514fa661a48e550b853cbb0a663.nix;
        revNum = 1;
        sha256 = "81b75d6ca308687aa14d937ea0adb61120871514fa661a48e550b853cbb0a663";
        };
      default = "r1";
      };
    };
  }