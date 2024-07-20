{
  "1.0.0.0" = {
    sha256 = "edc59d49aa9a6763519287c8c821c900c97bf3192c670ac1e6c2f1815ea87dd9";
    revisions = {
      r0 = {
        nix = import ../hackage/jet-stream-1.0.0.0-r0-3d2bb10f754b0e8b79fb4462bdacc616d52298bdad560e412abff0200131f4a7.nix;
        revNum = 0;
        sha256 = "3d2bb10f754b0e8b79fb4462bdacc616d52298bdad560e412abff0200131f4a7";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "5532711daf121852f771c6429b32eff8fc2c622ab50613c13bb6ef9d5029f0e5";
    revisions = {
      r0 = {
        nix = import ../hackage/jet-stream-1.1.0.0-r0-7e6e66b95a0d40916cf5fdb663a8c4c33d2648bf707883ad7eb7bfdc17ad98c5.nix;
        revNum = 0;
        sha256 = "7e6e66b95a0d40916cf5fdb663a8c4c33d2648bf707883ad7eb7bfdc17ad98c5";
      };
      default = "r0";
    };
  };
}