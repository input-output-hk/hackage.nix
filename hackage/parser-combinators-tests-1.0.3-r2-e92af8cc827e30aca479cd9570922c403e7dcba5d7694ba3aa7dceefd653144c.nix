{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "parser-combinators-tests"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/parser-combinators";
      url = "";
      synopsis = "Test suite of parser-combinators";
      description = "Test suite of parser-combinators.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.megaparsec-tests)
            (hsPkgs.parser-combinators)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }