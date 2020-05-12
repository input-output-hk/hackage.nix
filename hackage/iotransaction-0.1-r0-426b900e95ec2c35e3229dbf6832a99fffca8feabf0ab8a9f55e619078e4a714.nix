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
      identifier = { name = "iotransaction"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2013 Charles Dylan Shearer";
      maintainer = "iotransaction@nekonya.info";
      author = "C. Dylan Shearer";
      homepage = "https://bitbucket.org/dshearer/iotransaction/";
      url = "";
      synopsis = "Supports the automatic undoing of IO operations when an exception is thrown.";
      description = "This module provides facilities for building transactions out of 'IO' actions in such a way that, if one 'IO' action in a transaction throws an exception, the effects of previous actions will be undone.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }