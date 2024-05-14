{
  "2.0" = {
    sha256 = "71812dcac477b34e878781fabc5922e992a4266f630bb74b99388b9437118f74";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sso-2.0-r0-902be13b604e4a3b51a9b8e1adc6a32f42322ae11f738a72a8c737b2d0a91a5e.nix;
        revNum = 0;
        sha256 = "902be13b604e4a3b51a9b8e1adc6a32f42322ae11f738a72a8c737b2d0a91a5e";
      };
      r1 = {
        nix = import ../hackage/amazonka-sso-2.0-r1-dfb9232d66fac2a912f63aa5ddaf56ea495649cc3ab451b5102f8ec579dedc4f.nix;
        revNum = 1;
        sha256 = "dfb9232d66fac2a912f63aa5ddaf56ea495649cc3ab451b5102f8ec579dedc4f";
      };
      default = "r1";
    };
  };
}