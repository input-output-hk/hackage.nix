{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graphmod"; version = "1.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/graphmod/wiki";
      url = "";
      synopsis = "Present the module dependencies of a program as a \"dot\" graph.";
      description = "This package contains a program that computes \"dot\" graphs\nfrom the dependencies of a number of Haskell modules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "graphmod" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
            (hsPkgs."haskell-lexer" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lexer"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }