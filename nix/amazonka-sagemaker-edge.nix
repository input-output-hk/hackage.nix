{
  "2.0" = {
    sha256 = "090513bfd3d873ec6670daa2c80d66c2e1d67b69f398363de60098b816d0d9b9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-edge-2.0-r0-838549c309283b28d4cf2b6ca610c1ff1e96bc9c8162f921c6e44634fdf89307.nix;
        revNum = 0;
        sha256 = "838549c309283b28d4cf2b6ca610c1ff1e96bc9c8162f921c6e44634fdf89307";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-edge-2.0-r1-2a52a0bd5ee09e52f8013e06d73259fe904b5054b667003a1b00f792e42e4838.nix;
        revNum = 1;
        sha256 = "2a52a0bd5ee09e52f8013e06d73259fe904b5054b667003a1b00f792e42e4838";
      };
      default = "r1";
    };
  };
}