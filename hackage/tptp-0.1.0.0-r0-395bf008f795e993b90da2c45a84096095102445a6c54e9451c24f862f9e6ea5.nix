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
      identifier = { name = "tptp"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "evgeny.kotelnikov@gmail.com";
      author = "Evgenii Kotelnikov";
      homepage = "https://github.com/aztek/tptp";
      url = "";
      synopsis = "A parser and a pretty printer for the TPTP language";
      description = "<http://www.tptp.org TPTP> (Thousands of Problems for Theorem Provers)\nis the standard language of problems, proofs, and models, used by automated\ntheorem provers.\n\nThis library provides definitions of data types, a pretty printer and an\n<http://hackage.haskell.org/package/attoparsec attoparsec> parser for\n(currently, a subset of) the TPTP language.";
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
      exes = {
        "parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tptp" or (errorHandler.buildDepError "tptp"))
          ];
          buildable = true;
        };
        "parse-tptp-library" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tptp" or (errorHandler.buildDepError "tptp"))
          ];
          buildable = true;
        };
      };
      tests = {
        "quickcheck-spec" = {
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
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tptp" or (errorHandler.buildDepError "tptp"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "8.0.0" && (compiler.isGhc && compiler.version.lt "8.1.0")
            then false
            else true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "8.4"
            then false
            else true;
        };
      };
    };
  }