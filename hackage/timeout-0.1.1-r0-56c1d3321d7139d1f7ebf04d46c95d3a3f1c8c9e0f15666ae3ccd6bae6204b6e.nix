{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "timeout"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2014 Fedor Gogolev\n2013 Selectel";
      maintainer = "knsd@knsd.net";
      author = "Fedor Gogolev <knsd@knsd.net>";
      homepage = "https://github.com/lambda-llama/timeout";
      url = "";
      synopsis = "Generalized sleep and timeout functions";
      description = "Generalized sleep and timeout functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          ];
        };
      tests = {
        "timeout-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }