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
      specVersion = "1.10";
      identifier = { name = "wl-pprint-ansiterm"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Hiroki Hattori; Copyright (C) 2011 Edward A. Kmett";
      maintainer = "seagull.kamome@gmail.com";
      author = "Hiroki Hattori";
      homepage = "https://github.com/seagull-kamome/wl-pprint-ansiterm";
      url = "";
      synopsis = "ANSI Terminal support with wl-pprint-extras";
      description = "ANSI Terminal support with wl-pprint-extras";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }