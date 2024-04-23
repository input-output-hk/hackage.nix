{
  "1.0.0.0" = {
    sha256 = "b4dc47ec1552b66e69a465e9f974c8afab914b6a85f8214398969b1daf0efc6d";
    revisions = {
      r0 = {
        nix = import ../hackage/collections-api-1.0.0.0-r0-ed9fa09839e364045653ef99ff0cf8c9771ad55df5bfd754f594aa1eb651308e.nix;
        revNum = 0;
        sha256 = "ed9fa09839e364045653ef99ff0cf8c9771ad55df5bfd754f594aa1eb651308e";
      };
      r1 = {
        nix = import ../hackage/collections-api-1.0.0.0-r1-b7b6740bf2a840d08049c78bc9b1a14f234ec7fcb13d0dddcf60392ef9fc8880.nix;
        revNum = 1;
        sha256 = "b7b6740bf2a840d08049c78bc9b1a14f234ec7fcb13d0dddcf60392ef9fc8880";
      };
      r2 = {
        nix = import ../hackage/collections-api-1.0.0.0-r2-b497904367aafbe7949dfa846aa34eec27b9ee99bc61ee2f665d48fdf83e7d1c.nix;
        revNum = 2;
        sha256 = "b497904367aafbe7949dfa846aa34eec27b9ee99bc61ee2f665d48fdf83e7d1c";
      };
      default = "r2";
    };
  };
}