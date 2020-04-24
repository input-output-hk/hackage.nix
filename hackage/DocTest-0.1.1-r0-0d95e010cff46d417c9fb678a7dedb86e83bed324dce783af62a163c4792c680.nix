{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "DocTest"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon.hengel@wiktory.org";
      author = "Simon Hengel";
      homepage = "http://haskell.org/haskellwiki/DocTest";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "DocTest checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <http://haskell.org/haskellwiki/DocTest>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }