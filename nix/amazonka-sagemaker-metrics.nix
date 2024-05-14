{
  "2.0" = {
    sha256 = "d0f4862507ff9c1052f14cbe2cb3c4da68bd5006f3dbd6581553c7e1d174da7b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-metrics-2.0-r0-090f8d23f1f613cedef3ce2c771470628c3f6cb53cc7ff5cbb78dc23aac58b65.nix;
        revNum = 0;
        sha256 = "090f8d23f1f613cedef3ce2c771470628c3f6cb53cc7ff5cbb78dc23aac58b65";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-metrics-2.0-r1-bc3ac7c149e7571c94c4287c322803f8073e28bdac7b2e8289b3b02ab7d8f991.nix;
        revNum = 1;
        sha256 = "bc3ac7c149e7571c94c4287c322803f8073e28bdac7b2e8289b3b02ab7d8f991";
      };
      default = "r1";
    };
  };
}