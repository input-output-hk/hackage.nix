{
  "0.1.0.0" = {
    sha256 = "a55bc57511182ee0ddfd8150116b43fb95788656e0612b8b0b4b8598717bcfb9";
    revisions = {
      r0 = {
        nix = import ../hackage/extended-0.1.0.0-r0-67d7cce7deda47371cb541c98e64cacbe5e7030b812dafb2bd4b883e610d34ef.nix;
        revNum = 0;
        sha256 = "67d7cce7deda47371cb541c98e64cacbe5e7030b812dafb2bd4b883e610d34ef";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "0572ed18b6c1be8e67176eed7a72c3d778f1c79bf16711de17739f980aba3671";
    revisions = {
      r0 = {
        nix = import ../hackage/extended-0.2.0.0-r0-73cbac60d43179970c19726da96263cdd4fca0b8bcdcbf465758c9f849f6df90.nix;
        revNum = 0;
        sha256 = "73cbac60d43179970c19726da96263cdd4fca0b8bcdcbf465758c9f849f6df90";
      };
      default = "r0";
    };
  };
}