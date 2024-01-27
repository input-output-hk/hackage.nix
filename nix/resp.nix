{
  "1.0.0" = {
    sha256 = "11d6cd64ea05e11d478115931b6fa92aed54659c5998203969b025e1e77da80e";
    revisions = {
      r0 = {
        nix = import ../hackage/resp-1.0.0-r0-1625c69de6fa3d637223c43539e140e8fd81f802fe274bf4dfe38fc4dae9cdfa.nix;
        revNum = 0;
        sha256 = "1625c69de6fa3d637223c43539e140e8fd81f802fe274bf4dfe38fc4dae9cdfa";
        };
      default = "r0";
      };
    };
  "2.0.0" = {
    sha256 = "3f01f1fdfa7a62bec13d52d82e354b603215ad07355d6135db34994966563b09";
    revisions = {
      r0 = {
        nix = import ../hackage/resp-2.0.0-r0-5e15eb350854dbab2b22c8a887fb9076a8fafd93012b75d526085da5f46500c4.nix;
        revNum = 0;
        sha256 = "5e15eb350854dbab2b22c8a887fb9076a8fafd93012b75d526085da5f46500c4";
        };
      default = "r0";
      };
    };
  }