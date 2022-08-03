{
  "0.0.1" = {
    sha256 = "4d982dc33ac895443cd60753e45134f9d1fe925f25393ac6b695fba7e1edb37c";
    revisions = {
      r0 = {
        nix = import ../hackage/moto-postgresql-0.0.1-r0-15b5752c2e112abae421ce578da3fbc2c34e7688f31483f3e3f2bacb7a1f59bc.nix;
        revNum = 0;
        sha256 = "15b5752c2e112abae421ce578da3fbc2c34e7688f31483f3e3f2bacb7a1f59bc";
        };
      default = "r0";
      };
    };
  "0.0.2" = {
    sha256 = "9d819bc9b6532f23f8be62cf403e0906c019028503603825a109e2681efbddd8";
    revisions = {
      r0 = {
        nix = import ../hackage/moto-postgresql-0.0.2-r0-1f398a850b7c0496cce21868bbf8276127629593ddab453954600d223441d096.nix;
        revNum = 0;
        sha256 = "1f398a850b7c0496cce21868bbf8276127629593ddab453954600d223441d096";
        };
      default = "r0";
      };
    };
  }