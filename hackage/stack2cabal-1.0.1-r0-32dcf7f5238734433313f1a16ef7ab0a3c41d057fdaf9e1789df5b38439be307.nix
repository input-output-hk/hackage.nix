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
      specVersion = "2.2";
      identifier = { name = "stack2cabal"; version = "1.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack projects to cabal.project + cabal.project.freeze";
      description = "Convert stack.yaml / package.yaml to cabal.project / cabal.project.freeze / *.cabal.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack2cabal" = {
          depends = [
            (hsPkgs."stackage-to-hackage" or (errorHandler.buildDepError "stackage-to-hackage"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }