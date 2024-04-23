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
      identifier = { name = "hsqml-morris"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "HsQML-based implementation of Nine Men's Morris";
      description = "HsQML-based implementation of Nine Men's Morris";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsqml-morris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."OddWord" or (errorHandler.buildDepError "OddWord"))
            (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
          ];
          buildable = true;
        };
      };
    };
  }