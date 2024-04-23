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
      specVersion = "1.12";
      identifier = { name = "ihaskell-widgets"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2021 David Davó";
      maintainer = "David Davó <david@ddavo.me>\nSumit Sahrawat <sumit.sahrawat.apm13@iitbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "David Davó\nSumit Sahrawat";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ipython-kernel" or (errorHandler.buildDepError "ipython-kernel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.0") (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"));
        buildable = true;
      };
    };
  }