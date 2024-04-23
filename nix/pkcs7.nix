{
  "1.0.0.0" = {
    sha256 = "358befe81ab50ad7f3d0bc96f4ff142a63e8538ca04924a1a6e7ed10861978c2";
    revisions = {
      r0 = {
        nix = import ../hackage/pkcs7-1.0.0.0-r0-37f29f09856062f309ab0b9a44409745a20eff77e1c1d3eca095b47459b80962.nix;
        revNum = 0;
        sha256 = "37f29f09856062f309ab0b9a44409745a20eff77e1c1d3eca095b47459b80962";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "a22c63e56ca355df2075689753381f61cdfaf215e73755f55589b09a93bf9044";
    revisions = {
      r0 = {
        nix = import ../hackage/pkcs7-1.0.0.1-r0-b26e5181868667abbde3ce17f9a61cf705eb695da073cdf82e1f9dfd6cc11176.nix;
        revNum = 0;
        sha256 = "b26e5181868667abbde3ce17f9a61cf705eb695da073cdf82e1f9dfd6cc11176";
      };
      default = "r0";
    };
  };
}