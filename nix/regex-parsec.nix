{
  "0.90" = {
    sha256 = "dd76019bdbc921d1e720600e5a47ef85f5154d8f0493eb50eb9df60a4266c57d";
    revisions = {
      r0 = {
        nix = import ../hackage/regex-parsec-0.90-r0-6af92e8512dde46cc84c1111d651620e58e1bcaf5cad82cafef3f5c2fa207606.nix;
        revNum = 0;
        sha256 = "6af92e8512dde46cc84c1111d651620e58e1bcaf5cad82cafef3f5c2fa207606";
      };
      r1 = {
        nix = import ../hackage/regex-parsec-0.90-r1-c7b5f017ea298d7a4f08e7ab174ec59f108473ec4b3a362898e4b38beb9bc0a7.nix;
        revNum = 1;
        sha256 = "c7b5f017ea298d7a4f08e7ab174ec59f108473ec4b3a362898e4b38beb9bc0a7";
      };
      default = "r1";
    };
  };
}