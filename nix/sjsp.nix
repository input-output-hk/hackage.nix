{
  "0.1.0" = {
    sha256 = "74117748b466651b379696565687215dd8f89f5a45105b9c967146507f86e674";
    revisions = {
      r0 = {
        nix = import ../hackage/sjsp-0.1.0-r0-cfd96032d069a264b4c63f25d44ee499399f1d24fa82abdf042e209c79122918.nix;
        revNum = 0;
        sha256 = "cfd96032d069a264b4c63f25d44ee499399f1d24fa82abdf042e209c79122918";
        };
      r1 = {
        nix = import ../hackage/sjsp-0.1.0-r1-309e00100db2c1bae2d292c485f2dc1a68e1c72a848a2142c3f0637c494dd727.nix;
        revNum = 1;
        sha256 = "309e00100db2c1bae2d292c485f2dc1a68e1c72a848a2142c3f0637c494dd727";
        };
      default = "r1";
      };
    };
  }