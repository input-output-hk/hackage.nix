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
      identifier = { name = "shakebook"; version = "0.1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "20XX Me";
      maintainer = "example@example.com";
      author = "Me";
      homepage = "";
      url = "";
      synopsis = "Shake-based markdown/latex webbook.";
      description = "";
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
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."text-time" or (errorHandler.buildDepError "text-time"))
          ];
        buildable = true;
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
            (hsPkgs."text-time" or (errorHandler.buildDepError "text-time"))
            ];
          buildable = true;
          };
        };
      };
    }