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
      identifier = { name = "ihaskell-widgets"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@iitbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Sumit Sahrawat";
      homepage = "http://www.github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "IPython standard widgets for IHaskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ipython-kernel" or (errorHandler.buildDepError "ipython-kernel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          ];
        buildable = true;
        };
      };
    }