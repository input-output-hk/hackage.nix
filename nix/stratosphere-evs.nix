{
  "1.0.0" = {
    sha256 = "0f38b49e2828286c13d090a5b738975455e22cbb0bf609ed8cb44b25ac586fe9";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-evs-1.0.0-r0-cda352ed295455efd9b23836cacc828719a35366310e2671dd78ec67b609b801.nix;
        revNum = 0;
        sha256 = "cda352ed295455efd9b23836cacc828719a35366310e2671dd78ec67b609b801";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "257c0f66e531a0070bb894234747e425f5d900ab548f5e7bd54a51ad3fe17a3f";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-evs-1.0.1-r0-44cf4ef29f6bc4f90764a13f77815f24d2d5a2ac09ba6f56b609ba943e4eb853.nix;
        revNum = 0;
        sha256 = "44cf4ef29f6bc4f90764a13f77815f24d2d5a2ac09ba6f56b609ba943e4eb853";
      };
      default = "r0";
    };
  };
}