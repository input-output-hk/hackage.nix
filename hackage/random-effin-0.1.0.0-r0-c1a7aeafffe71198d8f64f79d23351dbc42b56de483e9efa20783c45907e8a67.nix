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
    flags = { monadrandom = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "random-effin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Hiromi ISHII";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "A simple random generator library for effin";
      description = "A simple random generator library for effin";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effin" or (errorHandler.buildDepError "effin"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ (pkgs.lib).optional (flags.monadrandom) (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"));
        buildable = true;
        };
      };
    }