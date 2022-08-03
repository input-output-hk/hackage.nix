{
  "1.0" = {
    sha256 = "d4a0cf90675bb146acf2e7fa6e743501f20b8efc7b9beac53e6081e9c1851134";
    revisions = {
      r0 = {
        nix = import ../hackage/yesod-elements-1.0-r0-2dc619cd44a2e7f188345db4c9270e36d5f44b37d14d6615659e3ad0d471877e.nix;
        revNum = 0;
        sha256 = "2dc619cd44a2e7f188345db4c9270e36d5f44b37d14d6615659e3ad0d471877e";
        };
      r1 = {
        nix = import ../hackage/yesod-elements-1.0-r1-19ca9113739dc2432a14b45f1508d341fc83103b9165434c1240f2fab87e0735.nix;
        revNum = 1;
        sha256 = "19ca9113739dc2432a14b45f1508d341fc83103b9165434c1240f2fab87e0735";
        };
      default = "r1";
      };
    };
  "1.1" = {
    sha256 = "a38d77ce040fbed7a69944bc2f7a77f55b069af0bc47f75baf0097423b1dbd67";
    revisions = {
      r0 = {
        nix = import ../hackage/yesod-elements-1.1-r0-0f48258cb3c177388e0c292961c7335dd841ae1f3a5057820c10d81eb0859d24.nix;
        revNum = 0;
        sha256 = "0f48258cb3c177388e0c292961c7335dd841ae1f3a5057820c10d81eb0859d24";
        };
      default = "r0";
      };
    };
  "1.1.1" = {
    sha256 = "2bad304332e0d8afee04f8c0e261d0786a6e2112f6ec26b4bb1a062a47e95844";
    revisions = {
      r0 = {
        nix = import ../hackage/yesod-elements-1.1.1-r0-9880320247b4184684acde2dced32685d4c2c8f8e63c60e63b55e117854acb67.nix;
        revNum = 0;
        sha256 = "9880320247b4184684acde2dced32685d4c2c8f8e63c60e63b55e117854acb67";
        };
      default = "r0";
      };
    };
  }