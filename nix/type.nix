{
  "0.1.0" = {
    sha256 = "2e8037b9e8d5686f1d146a166614f32c5e0b8c5b7faadfc49d06d28de6321b9a";
    revisions = {
      r0 = {
        nix = import ../hackage/type-0.1.0-r0-8e8bc6919738c94b24fba5ad39177fad90d67587d90a6067e9055ba9834beba3.nix;
        revNum = 0;
        sha256 = "8e8bc6919738c94b24fba5ad39177fad90d67587d90a6067e9055ba9834beba3";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "b5487f827fb266f4c2c22bcaded99f4f7e1caa281db75a2a4bfad568835cb38f";
    revisions = {
      r0 = {
        nix = import ../hackage/type-0.2.0-r0-4e0eee076fb3624cd53f38e75ffa6e58d61de23f0d9caa64caec78055df28021.nix;
        revNum = 0;
        sha256 = "4e0eee076fb3624cd53f38e75ffa6e58d61de23f0d9caa64caec78055df28021";
      };
      default = "r0";
    };
  };
}