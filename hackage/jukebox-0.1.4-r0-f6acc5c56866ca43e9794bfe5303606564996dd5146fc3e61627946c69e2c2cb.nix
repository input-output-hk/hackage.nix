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
      specVersion = "1.8";
      identifier = { name = "jukebox"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2009-2014 Nick Smallbone, Koen Claessen, Ann Lillieström";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "";
      url = "";
      synopsis = "A first-order reasoning toolbox";
      description = "Jukebox is a suite of tools for transforming problems in first-order logic.\nIt reads problems in TPTP (FOF and TFF) format.\n\nCurrently it can translate typed problems to untyped (by efficiently\nencoding types) and clausify problems (both typed and untyped).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          ];
        buildable = true;
        };
      exes = {
        "jukebox" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."jukebox" or (errorHandler.buildDepError "jukebox"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }