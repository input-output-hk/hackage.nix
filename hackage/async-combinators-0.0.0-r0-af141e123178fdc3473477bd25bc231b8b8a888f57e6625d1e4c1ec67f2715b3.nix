{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "async-combinators"; version = "0.0.0"; };
      license = "MPL-2.0";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/async-combinators";
      url = "";
      synopsis = "Async combinators";
      description = "Async combinators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.safe-exceptions)
          (hsPkgs.universum)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "async-combinators-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async-combinators)
            (hsPkgs.universum)
            (hsPkgs.HUnit)
            (hsPkgs.hedgehog)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hunit)
            ];
          build-tools = [ ((hsPkgs.buildPackages).tasty-discover) ];
          };
        };
      };
    }