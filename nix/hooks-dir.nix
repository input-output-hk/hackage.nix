{
  "0.1.0.0" = {
    sha256 = "93c5924721032feebcd7bf0d3e2ead66abfc494516eaef1ae3191f286b0d0d23";
    revisions = {
      r0 = {
        nix = import ../hackage/hooks-dir-0.1.0.0-r0-ba6ddb81ca1ddd237278b161a0f88e4cd46156fb66e510d7ca0374387b7a083f.nix;
        revNum = 0;
        sha256 = "ba6ddb81ca1ddd237278b161a0f88e4cd46156fb66e510d7ca0374387b7a083f";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "ab685c202841e2d35d225b151786133309af38694818ac7aefc84e44ebc58d3f";
    revisions = {
      r0 = {
        nix = import ../hackage/hooks-dir-0.1.1.0-r0-dde6ac87c65c907cf24f83125811f61e1284ca392e12b679750442459141bffb.nix;
        revNum = 0;
        sha256 = "dde6ac87c65c907cf24f83125811f61e1284ca392e12b679750442459141bffb";
      };
      default = "r0";
    };
  };
}