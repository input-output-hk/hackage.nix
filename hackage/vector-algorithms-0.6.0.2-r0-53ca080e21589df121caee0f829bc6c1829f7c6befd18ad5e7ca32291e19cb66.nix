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
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      bench = false;
      properties = true;
      };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "vector-algorithms"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008,2009,2010,2011,2012,2013,2014 Dan Doel";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient algorithms for vector arrays";
      description = "Efficient algorithms for vector arrays";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "vector-algorithms-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if !flags.bench then false else true;
          };
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.properties)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.properties then false else true;
          };
        };
      };
    }