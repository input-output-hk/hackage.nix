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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Finance-Treasury"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stevelihn@gmail.com";
      author = "Stephen Lihn";
      homepage = "http://www.ecoin.net/haskell/Finance-Treasury.html";
      url = "";
      synopsis = "Obtain Treasury yield curve data";
      description = "Obtain Treasury yield curve data from Department of Treasury website";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."HTTP-Simple" or (errorHandler.buildDepError "HTTP-Simple"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."HTTP-Simple" or (errorHandler.buildDepError "HTTP-Simple"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
        buildable = true;
      };
    };
  }