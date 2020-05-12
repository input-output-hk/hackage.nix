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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "shakebook"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Shake-based technical documentation generator; HTML & PDF";
      description = "Shakebook is a documentation generator aimed at covering all the bases for mathematical, technical and scientific diagrams and typesetting. Shakebook provides combinators for taking markdown files and combining them into documents, but allowing the user to control how. Shakebook provides general combinators for templating single pages, cofree comonads for representing tables of contents, and zipper comonads for representing pagers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."comonad-extras" or (errorHandler.buildDepError "comonad-extras"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."slick" or (errorHandler.buildDepError "slick"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text-time" or (errorHandler.buildDepError "text-time"))
          ];
        buildable = true;
        };
      exes = {
        "shakebook-simple-blog" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-extras" or (errorHandler.buildDepError "comonad-extras"))
            (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."shakebook" or (errorHandler.buildDepError "shakebook"))
            (hsPkgs."slick" or (errorHandler.buildDepError "slick"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text-time" or (errorHandler.buildDepError "text-time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "shakebook-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-extras" or (errorHandler.buildDepError "comonad-extras"))
            (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."shakebook" or (errorHandler.buildDepError "shakebook"))
            (hsPkgs."slick" or (errorHandler.buildDepError "slick"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text-time" or (errorHandler.buildDepError "text-time"))
            ];
          buildable = true;
          };
        };
      };
    }