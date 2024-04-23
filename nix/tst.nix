{
  "0.1" = {
    sha256 = "5831898e74141af4d7a9b7f93494be9b1820779d68c07d27b54c2f9585ebb360";
    revisions = {
      r0 = {
        nix = import ../hackage/tst-0.1-r0-1834b91d7791e503a09c7718e0502ac970c9d7f66f553b016c7ce7d0fa29d66f.nix;
        revNum = 0;
        sha256 = "1834b91d7791e503a09c7718e0502ac970c9d7f66f553b016c7ce7d0fa29d66f";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "1d6e11d80383d2bf28c01ea75391b68dc6991b90a9613404cafc0a502fa121ef";
    revisions = {
      r0 = {
        nix = import ../hackage/tst-0.1.1-r0-785f5ee1c1f5c475d7951c47383db432ebb9ef231571e60ece8759f8ef35426b.nix;
        revNum = 0;
        sha256 = "785f5ee1c1f5c475d7951c47383db432ebb9ef231571e60ece8759f8ef35426b";
      };
      default = "r0";
    };
  };
}