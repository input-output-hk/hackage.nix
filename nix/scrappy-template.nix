{
  "0.1.0.0" = {
    sha256 = "dc09059f1accab5bddff3ba607f792fb0c851c03041d3f225f5d1a15de9e8cde";
    revisions = {
      r0 = {
        nix = import ../hackage/scrappy-template-0.1.0.0-r0-347230525acab2eb559425cc4650ac27fcf7075e4aff5be9569c9a5c9cd84384.nix;
        revNum = 0;
        sha256 = "347230525acab2eb559425cc4650ac27fcf7075e4aff5be9569c9a5c9cd84384";
      };
      r1 = {
        nix = import ../hackage/scrappy-template-0.1.0.0-r1-0d02264fc4176c6259a032fa6595f16d41b92afc99e36061d95a19476c8a69bf.nix;
        revNum = 1;
        sha256 = "0d02264fc4176c6259a032fa6595f16d41b92afc99e36061d95a19476c8a69bf";
      };
      default = "r1";
    };
  };
}