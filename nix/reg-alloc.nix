{
  "0.1.0.0" = {
    sha256 = "1950f44a234f4ec22a1c64428902e8f7f158b88f2cb831abfa21874b454e33d2";
    revisions = {
      r0 = {
        nix = import ../hackage/reg-alloc-0.1.0.0-r0-f21c039b307e053e69f56fb9e4ae8d4057d5b58f7c91440b060fbe3b9211cb2a.nix;
        revNum = 0;
        sha256 = "f21c039b307e053e69f56fb9e4ae8d4057d5b58f7c91440b060fbe3b9211cb2a";
      };
      r1 = {
        nix = import ../hackage/reg-alloc-0.1.0.0-r1-8d668d174da483c044a5adc5e01ec4f002d0feab7fd66e2ecb52acc6cad3f1b7.nix;
        revNum = 1;
        sha256 = "8d668d174da483c044a5adc5e01ec4f002d0feab7fd66e2ecb52acc6cad3f1b7";
      };
      default = "r1";
    };
  };
}