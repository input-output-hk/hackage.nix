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
  "0.1.0.1" = {
    sha256 = "8d2b356d5e9daf2c59a9757f0f4514b020a0848512a9c4ee0d968a52b5c78c8b";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-tea-0.1.0.1-r0-c44f926e74d154cca1e9a18f983f3e2de4e707a4692f5d7b4a30e8ef64a6ee5e.nix;
        revNum = 0;
        sha256 = "c44f926e74d154cca1e9a18f983f3e2de4e707a4692f5d7b4a30e8ef64a6ee5e";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "6aa0515fedfbbf9d7945e2457e45d0e9749f4b0743f068343c9baa28a703ca73";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-tea-1.0.0-r0-c66b5075a061bace6b5ac8f9fb03bb35aa50da1f57018f5007edbc8128b22158.nix;
        revNum = 0;
        sha256 = "c66b5075a061bace6b5ac8f9fb03bb35aa50da1f57018f5007edbc8128b22158";
      };
      default = "r0";
    };
  };
}