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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-state"; version = "0.5.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/concurrent-state";
      url = "";
      synopsis = "MTL-like library using TVars";
      description = "State, RWS backed by TVar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "chat-server" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-state" or (errorHandler.buildDepError "concurrent-state"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }