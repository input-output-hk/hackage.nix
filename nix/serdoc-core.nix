{
  "0.1.0.0" = {
    sha256 = "e52d0a49022bf7be44a3e991f5c5f17abf5accfa42afa2da4df1f11b7356ba54";
    revisions = {
      r0 = {
        nix = import ../hackage/serdoc-core-0.1.0.0-r0-d07ffa19513051c6da5c626151562ca51b5d6430496a1d8f1819de0a56f62516.nix;
        revNum = 0;
        sha256 = "d07ffa19513051c6da5c626151562ca51b5d6430496a1d8f1819de0a56f62516";
      };
      r1 = {
        nix = import ../hackage/serdoc-core-0.1.0.0-r1-24eca67e954d206a8147a0adbe9cf23c54aba642ad365f366ee97ea7dea62740.nix;
        revNum = 1;
        sha256 = "24eca67e954d206a8147a0adbe9cf23c54aba642ad365f366ee97ea7dea62740";
      };
      default = "r1";
    };
  };
}