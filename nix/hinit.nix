{
  "0.1.0" = {
    sha256 = "8f8c60b0ed9b254fa049b000f64bb8340142d48d145ef2279af7dffbf3c0e7aa";
    revisions = {
      r0 = {
        nix = import ../hackage/hinit-0.1.0-r0-051016b6edeccec12c90a570d8bcc14669a8855d4ad5e5fe1e3382aa811f3e68.nix;
        revNum = 0;
        sha256 = "051016b6edeccec12c90a570d8bcc14669a8855d4ad5e5fe1e3382aa811f3e68";
      };
      r1 = {
        nix = import ../hackage/hinit-0.1.0-r1-5ee919738b20103767d33bbd67ffd5e75cee384d3df9f2b742af22d3876bcb4f.nix;
        revNum = 1;
        sha256 = "5ee919738b20103767d33bbd67ffd5e75cee384d3df9f2b742af22d3876bcb4f";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "3b00a822bb92c871565cb386c2af94464cb05c8b4066bbc85af6ec3f83e474c6";
    revisions = {
      r0 = {
        nix = import ../hackage/hinit-0.2.0-r0-82cb5b944dcb6f5e000fdc056100f96ea300e3bdcc8b1ed82af6b49c2cb0a4dd.nix;
        revNum = 0;
        sha256 = "82cb5b944dcb6f5e000fdc056100f96ea300e3bdcc8b1ed82af6b49c2cb0a4dd";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "6fe8aa008323b77807d3441f7efadec3cf8bc57a58ce631025c281f250e89082";
    revisions = {
      r0 = {
        nix = import ../hackage/hinit-0.2.1-r0-9cea637f8b4e7c7f086fc5cf5f2256d524cfb3213f6312fb8b288d3b2aac923e.nix;
        revNum = 0;
        sha256 = "9cea637f8b4e7c7f086fc5cf5f2256d524cfb3213f6312fb8b288d3b2aac923e";
      };
      default = "r0";
    };
  };
  "0.2.2" = {
    sha256 = "10ba3f61d712037903fa7ba2c86abefb75276ab2eee684952aba126470e2fe76";
    revisions = {
      r0 = {
        nix = import ../hackage/hinit-0.2.2-r0-9ec134d918c679a85b64278ddbfc17f18edf56c5ef6b9b12e18b4abd2b27be18.nix;
        revNum = 0;
        sha256 = "9ec134d918c679a85b64278ddbfc17f18edf56c5ef6b9b12e18b4abd2b27be18";
      };
      r1 = {
        nix = import ../hackage/hinit-0.2.2-r1-4a630657e60d119afee52223e3169fae874bf5681fad42ad7bd383ed9a5e5985.nix;
        revNum = 1;
        sha256 = "4a630657e60d119afee52223e3169fae874bf5681fad42ad7bd383ed9a5e5985";
      };
      default = "r1";
    };
  };
}