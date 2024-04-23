{
  "0.0.0" = {
    sha256 = "8e1f76f61f6dfd693bc95b2a75a0b5088cbafc3ee1b1eaae67902a1844254830";
    revisions = {
      r0 = {
        nix = import ../hackage/sugar-scheme-0.0.0-r0-dfe8971ea178938560299edf8ed0651dbba8c55508f9f38c4e1d293cbd67444d.nix;
        revNum = 0;
        sha256 = "dfe8971ea178938560299edf8ed0651dbba8c55508f9f38c4e1d293cbd67444d";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "b72d15ee389366c217c19d0d12d7371aad355af609ce13edcc734529f894abbb";
    revisions = {
      r0 = {
        nix = import ../hackage/sugar-scheme-0.0.1-r0-b8c48728b68a6e25747d8116c78aced15b397ca2e2de328839be2cd013fffa65.nix;
        revNum = 0;
        sha256 = "b8c48728b68a6e25747d8116c78aced15b397ca2e2de328839be2cd013fffa65";
      };
      default = "r0";
    };
  };
}