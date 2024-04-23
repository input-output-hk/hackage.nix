{
  "0.1" = {
    sha256 = "003aa614b045d63ceb10f62f31d674ad4e930dedb118b0d57adb8a0003cd090e";
    revisions = {
      r0 = {
        nix = import ../hackage/growable-vector-0.1-r0-8e375430447da19f338029806e146317b8e762ba4fb592f6b993f1f91f39ed86.nix;
        revNum = 0;
        sha256 = "8e375430447da19f338029806e146317b8e762ba4fb592f6b993f1f91f39ed86";
      };
      r1 = {
        nix = import ../hackage/growable-vector-0.1-r1-39b18ef37b9bda69f411bae3c015e7ba4c0901c6c16ef893e0c46b34a65d2d2d.nix;
        revNum = 1;
        sha256 = "39b18ef37b9bda69f411bae3c015e7ba4c0901c6c16ef893e0c46b34a65d2d2d";
      };
      default = "r1";
    };
  };
}