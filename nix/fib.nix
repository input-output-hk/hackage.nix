{
  "0.1" = {
    sha256 = "93fe144cf51833eac154801e1a01e90c7b3281d1250e1e1af97ca404ccb9f7a6";
    revisions = {
      r0 = {
        nix = import ../hackage/fib-0.1-r0-29347a6b1ca2d76a1235b3b001730f5ac8d83f9db07cd2f1ee91cb83edd11128.nix;
        revNum = 0;
        sha256 = "29347a6b1ca2d76a1235b3b001730f5ac8d83f9db07cd2f1ee91cb83edd11128";
        };
      r1 = {
        nix = import ../hackage/fib-0.1-r1-908695e8f5089f0b9ad05ba663a407c269c0553e9cd913a64f1b2543238427de.nix;
        revNum = 1;
        sha256 = "908695e8f5089f0b9ad05ba663a407c269c0553e9cd913a64f1b2543238427de";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "3d5a0cdadfc1e99ff081c1f080a876ef8894ccc3758b52d5ad5292fcbe13f39e";
    revisions = {
      r0 = {
        nix = import ../hackage/fib-0.1.0.1-r0-ef78b5f5d5899829f774497daa355c21daf1fcc144c2841cd4cbf6607b9cbc2e.nix;
        revNum = 0;
        sha256 = "ef78b5f5d5899829f774497daa355c21daf1fcc144c2841cd4cbf6607b9cbc2e";
        };
      default = "r0";
      };
    };
  }