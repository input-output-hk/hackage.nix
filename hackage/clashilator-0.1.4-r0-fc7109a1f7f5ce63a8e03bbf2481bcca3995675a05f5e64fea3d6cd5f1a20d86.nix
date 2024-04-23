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
      identifier = { name = "clashilator"; version = "0.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "gergo@erdi.hu";
      author = "Gergő Érdi";
      homepage = "https://github.com/gergoerdi/clashilator#readme";
      url = "";
      synopsis = "Automated Clash to Verilator bridge";
      description = "Code generator and @Setup.hs@ hooks to generate a Verilator simulation and access it from Clash";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-ghc" or (errorHandler.buildDepError "clash-ghc"))
          (hsPkgs."clash-lib" or (errorHandler.buildDepError "clash-lib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."stache" or (errorHandler.buildDepError "stache"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "clashilator" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clash-ghc" or (errorHandler.buildDepError "clash-ghc"))
            (hsPkgs."clash-lib" or (errorHandler.buildDepError "clash-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."stache" or (errorHandler.buildDepError "stache"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }