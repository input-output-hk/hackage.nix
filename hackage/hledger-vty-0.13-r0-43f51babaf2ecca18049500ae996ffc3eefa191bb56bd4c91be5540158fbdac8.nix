{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hledger-vty"; version = "0.13"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A hledger add-on command providing a full-window console interface.";
      description = "A hledger add-on command providing a full-window console interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hledger-vty" = {
          depends = [
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }