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
    flags = { minisat = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "jukebox"; version = "0.2.11"; };
      license = "BSD-3-Clause";
      copyright = "2009-2016 Nick Smallbone, Koen Claessen, Ann Lillieström";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uglymemo" or (errorHandler.buildDepError "uglymemo"))
          ] ++ (pkgs.lib).optional (flags.minisat) (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"));
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      exes = {
        "jukebox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jukebox" or (errorHandler.buildDepError "jukebox"))
            ];
          buildable = true;
          };
        };
      };
    }