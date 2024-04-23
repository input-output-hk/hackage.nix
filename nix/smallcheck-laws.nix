{
  "0.1" = {
    sha256 = "007671d00bdc79201fda20e0ca276a69547ae51e47ab646d3cff703d57756185";
    revisions = {
      r0 = {
        nix = import ../hackage/smallcheck-laws-0.1-r0-0fc12cc8f52f9cac909f52d205a39de4db6301da20e03a209182a058e6323cdf.nix;
        revNum = 0;
        sha256 = "0fc12cc8f52f9cac909f52d205a39de4db6301da20e03a209182a058e6323cdf";
      };
      r1 = {
        nix = import ../hackage/smallcheck-laws-0.1-r1-ff6bf8f4f1f7b95550c9adc53125bfb25dc665260f5121eaf811ca3a08e386a1.nix;
        revNum = 1;
        sha256 = "ff6bf8f4f1f7b95550c9adc53125bfb25dc665260f5121eaf811ca3a08e386a1";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "444f57c689d474fa38a7ebfbe119faf91f0a6c0e12474f7934ab8c98575a51c5";
    revisions = {
      r0 = {
        nix = import ../hackage/smallcheck-laws-0.2-r0-7189b29bbaa2a7ad017b8c6f673c02c63c3b33258ba6c9957ec4cbe2250337be.nix;
        revNum = 0;
        sha256 = "7189b29bbaa2a7ad017b8c6f673c02c63c3b33258ba6c9957ec4cbe2250337be";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "87d8ee55131915b5549a0053b605729222e3d6c79be94f8bb35aa263f50ad6cb";
    revisions = {
      r0 = {
        nix = import ../hackage/smallcheck-laws-0.3-r0-791d78c691a22bf29cfdafae3ef8fff52a5e4de3c4d1462d69bb044bc8159eff.nix;
        revNum = 0;
        sha256 = "791d78c691a22bf29cfdafae3ef8fff52a5e4de3c4d1462d69bb044bc8159eff";
      };
      default = "r0";
    };
  };
}