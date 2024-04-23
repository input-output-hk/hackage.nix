{
  "0.6" = {
    sha256 = "c7481595a2315ebd5e177cae77d7f738d6565f4f7c77fd7b4f7d48b1ed6850ed";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-primops-foreign-0.6-r0-09ad688d5f765d5e142d544626dfdce0b329d121a44f8b4ca6f582bfb1cae5b6.nix;
        revNum = 0;
        sha256 = "09ad688d5f765d5e142d544626dfdce0b329d121a44f8b4ca6f582bfb1cae5b6";
      };
      default = "r0";
    };
  };
  "0.6.1" = {
    sha256 = "43489c974839f25e49bbc46112728b91c80b44669a01b6faed3724779f87fa39";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-primops-foreign-0.6.1-r0-5c11cbae75556081502b9e0ac8e22fb56d4c32030c857c243436cb9660704938.nix;
        revNum = 0;
        sha256 = "5c11cbae75556081502b9e0ac8e22fb56d4c32030c857c243436cb9660704938";
      };
      default = "r0";
    };
  };
  "0.6.2" = {
    sha256 = "f5ced9cbff2cfabde28dab10f953162e3654a962f075e8e828d668d27b5ecddd";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-primops-foreign-0.6.2-r0-b0d18643484add51a59a9c1407e75488029eb0a783a33bad95f1223cd444dea9.nix;
        revNum = 0;
        sha256 = "b0d18643484add51a59a9c1407e75488029eb0a783a33bad95f1223cd444dea9";
      };
      r1 = {
        nix = import ../hackage/atomic-primops-foreign-0.6.2-r1-fd1067adbd96e923226347dccaa9e3e221439702fe7824c86db44eb5b7f6c318.nix;
        revNum = 1;
        sha256 = "fd1067adbd96e923226347dccaa9e3e221439702fe7824c86db44eb5b7f6c318";
      };
      default = "r1";
    };
  };
}