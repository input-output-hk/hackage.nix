{
  "0.1.0.0" = {
    sha256 = "0d8c9397c3364f870f9ccbfe8e9cf0f14f881c3c5f4bb187a63dca0a09d55454";
    revisions = {
      r0 = {
        nix = import ../hackage/hetero-zip-0.1.0.0-r0-04edfe91a27a7230322228952f625472e88be3e9ce8e6c78a8ceee4f122f0900.nix;
        revNum = 0;
        sha256 = "04edfe91a27a7230322228952f625472e88be3e9ce8e6c78a8ceee4f122f0900";
      };
      r1 = {
        nix = import ../hackage/hetero-zip-0.1.0.0-r1-0b1d4ee451d5e395d43c5f28f56e0965bec67166daf9b3ab1053047af49749ce.nix;
        revNum = 1;
        sha256 = "0b1d4ee451d5e395d43c5f28f56e0965bec67166daf9b3ab1053047af49749ce";
      };
      default = "r1";
    };
  };
}