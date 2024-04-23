{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "tptp"; version = "0.1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "evgeny.kotelnikov@gmail.com";
      author = "Evgenii Kotelnikov";
      homepage = "https://github.com/aztek/tptp";
      url = "";
      synopsis = "Parser and pretty printer for the TPTP language";
      description = "<http://www.tptp.org TPTP> (Thousands of Problems for Theorem Provers)\nis the standard language of problems, proofs, and models, used by automated\ntheorem provers.\n\nThis library provides definitions of data types, a\n<https://hackage.haskell.org/package/prettyprinter pretty printer> and an\n<https://hackage.haskell.org/package/attoparsec attoparsec> parser for the\nCNF, FOF, TFF0 and TFF1 subsets of TPTP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "quickcheck" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tptp" or (errorHandler.buildDepError "tptp"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2") (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"));
          buildable = true;
        };
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tptp" or (errorHandler.buildDepError "tptp"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "8.0.0" && (compiler.isGhc && compiler.version.lt "8.1.0")
            then false
            else true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = false;
        };
      };
    };
  }