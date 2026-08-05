{
  "0.3" = {
    sha256 = "09d838a9a25de704288001d4dfbf42df389c1b483d787b1f24a6f0d23db69500";
    revisions = {
      r0 = {
        nix = import ../hackage/encapsule-0.3-r0-309661866087a0d99e9243b5c9112dfae329ff03838e3e4be9606ccefea9e837.nix;
        revNum = 0;
        sha256 = "309661866087a0d99e9243b5c9112dfae329ff03838e3e4be9606ccefea9e837";
      };
      default = "r0";
    };
  };
  "0.4" = {
    sha256 = "4cb136a6bd40d410cb63072cf8648d49c8ddbde82087412ca00310fc24f979b7";
    revisions = {
      r0 = {
        nix = import ../hackage/encapsule-0.4-r0-17b09a0051b84aed044e45e2491bbb447bcb288bb6448ddeca4a162788a1a166.nix;
        revNum = 0;
        sha256 = "17b09a0051b84aed044e45e2491bbb447bcb288bb6448ddeca4a162788a1a166";
      };
      default = "r0";
    };
  };
}