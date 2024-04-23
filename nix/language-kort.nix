{
  "0.1.0.0" = {
    sha256 = "2082166bcf06325d23fb221b84756216a0efdf67e9bd1faf9cdb417048fb1936";
    revisions = {
      r0 = {
        nix = import ../hackage/language-kort-0.1.0.0-r0-68df4b8ce0165bf49ed96b418a5d53cd228695d0b66e4d9d124c1c1caf5c3aa9.nix;
        revNum = 0;
        sha256 = "68df4b8ce0165bf49ed96b418a5d53cd228695d0b66e4d9d124c1c1caf5c3aa9";
      };
      r1 = {
        nix = import ../hackage/language-kort-0.1.0.0-r1-970931caa4cb222825b70791198b4adc27877dbab25f0fb912348556e347fbf7.nix;
        revNum = 1;
        sha256 = "970931caa4cb222825b70791198b4adc27877dbab25f0fb912348556e347fbf7";
      };
      default = "r1";
    };
  };
}