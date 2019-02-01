{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "typerep-map"; version = "0.3.1"; };
      license = "MIT";
      copyright = "2017 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik, Vladislav Zavialov";
      homepage = "https://github.com/kowainik/typerep-map";
      url = "";
      synopsis = "Efficient implementation of a dependent map with types as keys";
      description = "A dependent map from type representations to values of these types.\n\nHere is an illustration of such a map:\n\n>     TMap\n> ---------------\n>  Int  -> 5\n>  Bool -> True\n>  Char -> 'x'\n\nIn addition to @TMap@, we provide @TypeRepMap@ parametrized by a\n@vinyl@-style interpretation. This data structure is equivalent to @DMap\nTypeRep@, but with significantly more efficient lookups.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.deepseq)
          ];
        };
      sublibs = {
        "typerep-extra-impls" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            ];
          };
        };
      tests = {
        "typerep-map-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-typelits-knownnat)
            (hsPkgs.hedgehog)
            (hsPkgs.typerep-map)
            (hsPkgs.typerep-extra-impls)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.QuickCheck)
            ];
          build-tools = [ ((hsPkgs.buildPackages).tasty-discover) ];
          };
        };
      benchmarks = {
        "typerep-map-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.ghc-typelits-knownnat)
            (hsPkgs.typerep-map)
            (hsPkgs.typerep-extra-impls)
            ];
          };
        };
      };
    }