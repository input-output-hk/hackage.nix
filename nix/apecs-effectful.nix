{
  "0.1.0.0" = {
    sha256 = "b17dc7b91964bb92023065e7d9c266e0d92e7d94530af11399ec804a8e7aa7ad";
    revisions = {
      r0 = {
        nix = import ../hackage/apecs-effectful-0.1.0.0-r0-03106fe71cd4e24625294e381d27eb8ea2942d0b943ca96ab6675677ec0ee63b.nix;
        revNum = 0;
        sha256 = "03106fe71cd4e24625294e381d27eb8ea2942d0b943ca96ab6675677ec0ee63b";
      };
      r1 = {
        nix = import ../hackage/apecs-effectful-0.1.0.0-r1-f5a06d5a489c902409133ad9f0df97075b8cf691ec9f82d7cbd97a9ffc98dfd7.nix;
        revNum = 1;
        sha256 = "f5a06d5a489c902409133ad9f0df97075b8cf691ec9f82d7cbd97a9ffc98dfd7";
      };
      default = "r1";
    };
  };
}