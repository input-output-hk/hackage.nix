{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "looper"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/looper#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/looper#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio)
          ];
        };
      tests = {
        "looper-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.looper)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }