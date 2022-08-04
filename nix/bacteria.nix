{
  "1.0" = {
    sha256 = "852bfc727cbf189ed91770777a14404cc046eeca746f0bc4f9abb6261aa970f3";
    revisions = {
      r0 = {
        nix = import ../hackage/bacteria-1.0-r0-a8f8f65ebbf1c35530cf10aab83ad2237762908fa60eaeacc30413fc5363a167.nix;
        revNum = 0;
        sha256 = "a8f8f65ebbf1c35530cf10aab83ad2237762908fa60eaeacc30413fc5363a167";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "6557c0567da7d9ff9da386a2b9e327858dc32ea185a41574769802b446b9c7a7";
    revisions = {
      r0 = {
        nix = import ../hackage/bacteria-1.1-r0-258466facce47dd162a1ef90bbe7e56bfd3e9b96832990de0b9a3911ae17aad5.nix;
        revNum = 0;
        sha256 = "258466facce47dd162a1ef90bbe7e56bfd3e9b96832990de0b9a3911ae17aad5";
        };
      default = "r0";
      };
    };
  }