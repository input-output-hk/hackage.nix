{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mockazo"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 The Agile Monkeys";
      maintainer = "hackers@theagilemonkeys.com";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/mockazo#readme";
      url = "";
      synopsis = "Mock records of functions easily";
      description = "Please see the README on GitHub at <https://github.com/theam/mockazo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.multistate)
          (hsPkgs.relude)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "mockazo-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.hspec)
            (hsPkgs.mockazo)
            (hsPkgs.multistate)
            (hsPkgs.relude)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }