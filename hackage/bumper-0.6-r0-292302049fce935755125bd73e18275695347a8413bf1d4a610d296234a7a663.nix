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
      specVersion = "1.6";
      identifier = { name = "bumper"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/bumper";
      url = "";
      synopsis = "Automatically bump package versions, also transitively.";
      description = "Automatically bump package versions, also transitively.\n\nReadme: <https://www.github.com/silkapp/bumper/blob/master/CHANGELOG.md>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bumper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
          buildable = true;
        };
      };
    };
  }