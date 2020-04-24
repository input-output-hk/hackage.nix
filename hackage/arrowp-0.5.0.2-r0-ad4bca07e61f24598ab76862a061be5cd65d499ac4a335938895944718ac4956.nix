{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "arrowp"; version = "0.5.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Ross Paterson <ross@soi.city.ac.uk>";
      homepage = "http://www.haskell.org/arrows/";
      url = "";
      synopsis = "preprocessor translating arrow notation into Haskell 98";
      description = "A preprocessor that reads Haskell with arrow notation\nand outputs Haskell 98.  Note that GHC 6.2 or later has\nbuilt-in support for arrow notation, so if you're only\nusing GHC, you don't need this preprocessor: just rename\nyour arrow module as an ordinary Haskell source file and\nadd a @LANGUAGE Arrows@ pragma at the top.  GHC also\ngives better error messages for arrow code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "arrowp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
            ];
          buildable = true;
          };
        };
      };
    }