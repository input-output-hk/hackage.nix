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
      specVersion = "1.2";
      identifier = { name = "count"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Zerzouri";
      author = "Max Zerzouri";
      homepage = "";
      url = "";
      synopsis = "Bijective mappings between values and possibly infinite prefixes of [0..]";
      description = "Combinators and a class for creating bijective functions between conceivably any data type definable and prefixes of the list of natural numbers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }