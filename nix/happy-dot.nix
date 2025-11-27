{
  "1.0.0.0" = {
    sha256 = "42154e9aa4d43dfd81432f84397fc153043c1d093b435970780900b1a732f1d4";
    revisions = {
      r0 = {
        nix = import ../hackage/happy-dot-1.0.0.0-r0-5c91ddfcdafbe42c4d47325c81e5f9f3455125915052296245944ad5207a2aaf.nix;
        revNum = 0;
        sha256 = "5c91ddfcdafbe42c4d47325c81e5f9f3455125915052296245944ad5207a2aaf";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "907d2f50b2c02444776e3d2f45ddc87d37449f5db49dc90be55ea11405ef2e9e";
    revisions = {
      r0 = {
        nix = import ../hackage/happy-dot-1.0.0.1-r0-9df22a95719e3f0173096be267f3d6271162321324da6872adc44c7d6efd091a.nix;
        revNum = 0;
        sha256 = "9df22a95719e3f0173096be267f3d6271162321324da6872adc44c7d6efd091a";
      };
      default = "r0";
    };
  };
}