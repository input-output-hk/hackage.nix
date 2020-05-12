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
    flags = { splitbase = true; instanceunit = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "storable-tuple"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storable@henning-thielemann.de>";
      author = "Henning Thielemann <storable@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/storable-tuple/";
      url = "";
      synopsis = "Storable instance for pairs and triples";
      description = "Provides a Storable instance for pair and triple\nwhich should be binary compatible with C99 and C++.\nThe only purpose of this package is to provide a standard location\nfor this instance so that other packages needing this instance\ncan play nicely together.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }