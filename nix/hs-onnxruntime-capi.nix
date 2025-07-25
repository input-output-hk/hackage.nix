{
  "0.1.0.0" = {
    sha256 = "91ce6f53247621abaab641717e35b9ac55071595265d30652baf0bc4ef3a32ea";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-onnxruntime-capi-0.1.0.0-r0-a3f16ae4b9872c2c5f2e85ddbb99e5564949634598aec21be4797290a21a62ab.nix;
        revNum = 0;
        sha256 = "a3f16ae4b9872c2c5f2e85ddbb99e5564949634598aec21be4797290a21a62ab";
      };
      r1 = {
        nix = import ../hackage/hs-onnxruntime-capi-0.1.0.0-r1-eef3dae245d841b42f90afdeb43a479263e9dc82a026cb69e995cf3a5ccf189f.nix;
        revNum = 1;
        sha256 = "eef3dae245d841b42f90afdeb43a479263e9dc82a026cb69e995cf3a5ccf189f";
      };
      default = "r1";
    };
  };
}