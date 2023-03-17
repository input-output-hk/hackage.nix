{
  "0.1.0" = {
    sha256 = "3c0cd158f5851cd0f37ecb475a58f179eed2a3b4e3afdc7ea9bdc20bd9119361";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-tea-0.1.0-r0-12bea71390c346829f6333e2267259b048382b68904880736cc5f250aaddbad1.nix;
        revNum = 0;
        sha256 = "12bea71390c346829f6333e2267259b048382b68904880736cc5f250aaddbad1";
        };
      r1 = {
        nix = import ../hackage/termbox-tea-0.1.0-r1-a17de4f75e93ba1d42e1363085a2f1ab795899b2d16d5a09958ea97477084269.nix;
        revNum = 1;
        sha256 = "a17de4f75e93ba1d42e1363085a2f1ab795899b2d16d5a09958ea97477084269";
        };
      default = "r1";
      };
    };
  }