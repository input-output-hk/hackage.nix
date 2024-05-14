{
  "2.0" = {
    sha256 = "2f91ecaea1ce727a94145d3088a227e28a7330aff7e5d0c3f6214f14b75f8f55";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-featurestore-runtime-2.0-r0-b6b0958903e07cd1ae52dce9a5e7ca9d0eb20c12495411282241a7df657734e5.nix;
        revNum = 0;
        sha256 = "b6b0958903e07cd1ae52dce9a5e7ca9d0eb20c12495411282241a7df657734e5";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-featurestore-runtime-2.0-r1-4598c8e767a5d39e5f55a75de676af1ab96901172296fb22b95b47816b25ddaf.nix;
        revNum = 1;
        sha256 = "4598c8e767a5d39e5f55a75de676af1ab96901172296fb22b95b47816b25ddaf";
      };
      default = "r1";
    };
  };
}