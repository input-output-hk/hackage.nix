{
  "0.1.0.0" = {
    sha256 = "af5605d0b7c1d0d6b64d2b0f4a2e307c453228feff59aa315644029bdab74802";
    revisions = {
      r0 = {
        nix = import ../hackage/pptable-0.1.0.0-r0-7e771fbac19cbcdeaa62c3707ef74dcd0285195e91bf6ec08794e492783f022a.nix;
        revNum = 0;
        sha256 = "7e771fbac19cbcdeaa62c3707ef74dcd0285195e91bf6ec08794e492783f022a";
      };
      r1 = {
        nix = import ../hackage/pptable-0.1.0.0-r1-422f8bd2b760a7e24f66354af49a1f51d8253155a6007d1538190d1877335f95.nix;
        revNum = 1;
        sha256 = "422f8bd2b760a7e24f66354af49a1f51d8253155a6007d1538190d1877335f95";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "3b1ef3b8ed3ada99fdd4811e1d8a56764c9ceabdb920ee735b89fe349cdf6484";
    revisions = {
      r0 = {
        nix = import ../hackage/pptable-0.1.0.1-r0-80a8388eac38e1d4508a796e1dad024180d2be4870a8e0ca567279b1f37cf81a.nix;
        revNum = 0;
        sha256 = "80a8388eac38e1d4508a796e1dad024180d2be4870a8e0ca567279b1f37cf81a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "c78c74f345cee1afd1021df509421cb151d484c4891e9335427182339547fb2d";
    revisions = {
      r0 = {
        nix = import ../hackage/pptable-0.2.0.0-r0-6ea88ff591ac4b3f26176354f7be196a1b91c6310134f6d90ca2d748e80f01fa.nix;
        revNum = 0;
        sha256 = "6ea88ff591ac4b3f26176354f7be196a1b91c6310134f6d90ca2d748e80f01fa";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "98b7ff404eceaad834b16187af44db37324d3bfaa631347794bb0f28a6dd9317";
    revisions = {
      r0 = {
        nix = import ../hackage/pptable-0.3.0.0-r0-dc1f8a3d65cbedaed2f3f0819ceb8248d4f6737ff475c1f3818e8e6beaeae98b.nix;
        revNum = 0;
        sha256 = "dc1f8a3d65cbedaed2f3f0819ceb8248d4f6737ff475c1f3818e8e6beaeae98b";
      };
      r1 = {
        nix = import ../hackage/pptable-0.3.0.0-r1-ebb59dab8a078784d5e0c0c0b07cc22ef687a55eb7f03fb875eb33cfdfce3a30.nix;
        revNum = 1;
        sha256 = "ebb59dab8a078784d5e0c0c0b07cc22ef687a55eb7f03fb875eb33cfdfce3a30";
      };
      default = "r1";
    };
  };
}