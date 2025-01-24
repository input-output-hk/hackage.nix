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
  "0.2.0.0" = {
    sha256 = "2aa8e70f854ecaa00ea447c9631ad58b7f98be8115de85b129a7174e17e4eb0a";
    revisions = {
      r0 = {
        nix = import ../hackage/serdoc-core-0.2.0.0-r0-bd8514989e63b471798a8844b82bbf4a8ccb26d08197660126bab05f24847e35.nix;
        revNum = 0;
        sha256 = "bd8514989e63b471798a8844b82bbf4a8ccb26d08197660126bab05f24847e35";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "8bc80789385c7979a1e1fef7990289d43128ec51cd8df84ae261e58848651458";
    revisions = {
      r0 = {
        nix = import ../hackage/serdoc-core-0.3.0.0-r0-bcc8175f9f078498f2d63534efd6af5cdeeb17a7ea8b30428560a2ea71e55fd8.nix;
        revNum = 0;
        sha256 = "bcc8175f9f078498f2d63534efd6af5cdeeb17a7ea8b30428560a2ea71e55fd8";
      };
      default = "r0";
    };
  };
}