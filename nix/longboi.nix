{
  "1.0.0" = {
    sha256 = "e7a492dca36ce1cdbd4db0c4be28a72896d46015dcece61cb273d99a6218a24a";
    revisions = {
      r0 = {
        nix = import ../hackage/longboi-1.0.0-r0-bd43cb8fa8b293604c9ccbb5b51f05e368a334bddcc3959dc0cf5ea5f4102f2d.nix;
        revNum = 0;
        sha256 = "bd43cb8fa8b293604c9ccbb5b51f05e368a334bddcc3959dc0cf5ea5f4102f2d";
        };
      r1 = {
        nix = import ../hackage/longboi-1.0.0-r1-67d9ed5d8db219557d5b390e94d3499748b10102ad47ac1ee1861dc9682e3222.nix;
        revNum = 1;
        sha256 = "67d9ed5d8db219557d5b390e94d3499748b10102ad47ac1ee1861dc9682e3222";
        };
      default = "r1";
      };
    };
  }