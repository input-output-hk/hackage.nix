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
      identifier = { name = "concraft-hr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vjeran.crnjak@gmail.com";
      author = "Vjeran Crnjak";
      homepage = "https://github.com/vjeranc/concraft-hr";
      url = "";
      synopsis = "Part-of-speech tagger for Croatian";
      description = "A part-of-speech tagger for Croatian based on the concraft library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."concraft" or (errorHandler.buildDepError "concraft"))
          (hsPkgs."tagset-positional" or (errorHandler.buildDepError "tagset-positional"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."lazy-io" or (errorHandler.buildDepError "lazy-io"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."moan" or (errorHandler.buildDepError "moan"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-hr" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }