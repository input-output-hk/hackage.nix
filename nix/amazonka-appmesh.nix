{
  "2.0" = {
    sha256 = "19d3e32c2cb57f64ff949725c12e840b907319f56f0f143e597cc71a13b623b7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appmesh-2.0-r0-e5d8fbef6daf2dcd0efe0aaae0cc329d1b3d479c8249d153df9207b3b1701659.nix;
        revNum = 0;
        sha256 = "e5d8fbef6daf2dcd0efe0aaae0cc329d1b3d479c8249d153df9207b3b1701659";
      };
      r1 = {
        nix = import ../hackage/amazonka-appmesh-2.0-r1-3f7efecf02d195ede1a7b3bff66589fe2a9a23494afa5ba55c4667600e0721fb.nix;
        revNum = 1;
        sha256 = "3f7efecf02d195ede1a7b3bff66589fe2a9a23494afa5ba55c4667600e0721fb";
      };
      default = "r1";
    };
  };
}