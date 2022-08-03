{
  "0.1.0.0" = {
    sha256 = "27bcced7b4d574e66a2dde4ae9434376fde41a65edd1b9d5b49e39d9a969e7f7";
    revisions = {
      r0 = {
        nix = import ../hackage/feature-flipper-postgres-0.1.0.0-r0-a7ba0b798813e8746e9717e6f8b87232e3b36349a34a2a79b0f793b98ae30e35.nix;
        revNum = 0;
        sha256 = "a7ba0b798813e8746e9717e6f8b87232e3b36349a34a2a79b0f793b98ae30e35";
        };
      r1 = {
        nix = import ../hackage/feature-flipper-postgres-0.1.0.0-r1-b01284dda6cdead2f7e584764be26c125789b0689dc4e82be9c5cccaef9d2980.nix;
        revNum = 1;
        sha256 = "b01284dda6cdead2f7e584764be26c125789b0689dc4e82be9c5cccaef9d2980";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "25ddb730ba40d723a0e6eaeef2ac1a42dc9aae3f26f6cad9e90dd0e12f6e1cd6";
    revisions = {
      r0 = {
        nix = import ../hackage/feature-flipper-postgres-0.1.0.1-r0-ed01729f416f50831fcd5bdabd54d48ae72dbb1b69a6c25406fe97f8e080d5cc.nix;
        revNum = 0;
        sha256 = "ed01729f416f50831fcd5bdabd54d48ae72dbb1b69a6c25406fe97f8e080d5cc";
        };
      default = "r0";
      };
    };
  "0.1.1.1" = {
    sha256 = "7e216efddf846c6733cafb295cdf1d8e534ce873a81aa86887b8e337ac86d3a0";
    revisions = {
      r0 = {
        nix = import ../hackage/feature-flipper-postgres-0.1.1.1-r0-37c35246d43939235c19dcc74c591dcffe7504757ae59a89106883d6525757c4.nix;
        revNum = 0;
        sha256 = "37c35246d43939235c19dcc74c591dcffe7504757ae59a89106883d6525757c4";
        };
      default = "r0";
      };
    };
  }