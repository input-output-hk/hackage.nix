{
  "0.4.0.0" = {
    sha256 = "f3bc6a82f77f4b077205702e8e27b1ebcd3cf6f39362657a65cfcea49b3c0ba4";
    revisions = {
      r0 = {
        nix = import ../hackage/guardian-0.4.0.0-r0-a23ed988b78dc4cef12282d710710d05e2e70c6fe32c5448a1b3e6137afade4f.nix;
        revNum = 0;
        sha256 = "a23ed988b78dc4cef12282d710710d05e2e70c6fe32c5448a1b3e6137afade4f";
      };
      default = "r0";
    };
  };
  "0.5.0.0" = {
    sha256 = "00ecde6d525fb44d1f037c9276f24ed346a33778832208377dbd9193563f7207";
    revisions = {
      r0 = {
        nix = import ../hackage/guardian-0.5.0.0-r0-34dfc1bfa14350e996c24ac580175ae7000ae1fa8c1a496b157a9e724c720252.nix;
        revNum = 0;
        sha256 = "34dfc1bfa14350e996c24ac580175ae7000ae1fa8c1a496b157a9e724c720252";
      };
      default = "r0";
    };
  };
}