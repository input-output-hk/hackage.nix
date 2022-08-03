{
  "0.14" = {
    sha256 = "b4138d1f4f52eb8a3d89c6424e20783a59d6070f26f36e238de4b4a44a4d1ba0";
    revisions = {
      r0 = {
        nix = import ../hackage/sc3-rdu-0.14-r0-4a81b22ec38de326673825d3d853ea54a0896d96b4c8886ede70198cfac6e6dd.nix;
        revNum = 0;
        sha256 = "4a81b22ec38de326673825d3d853ea54a0896d96b4c8886ede70198cfac6e6dd";
        };
      default = "r0";
      };
    };
  "0.15" = {
    sha256 = "60cc87b6977770f6de62a1a331a0252e356922792ed76a6f13ab8ca2074f2d7f";
    revisions = {
      r0 = {
        nix = import ../hackage/sc3-rdu-0.15-r0-f101f6e12aefa28fdc0252e55e1351dea01a6831a6028b1529c5949891dc6c63.nix;
        revNum = 0;
        sha256 = "f101f6e12aefa28fdc0252e55e1351dea01a6831a6028b1529c5949891dc6c63";
        };
      default = "r0";
      };
    };
  }