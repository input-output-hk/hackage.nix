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
      identifier = { name = "TypeNat"; version = "0.5.0.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "aovieth@gmail.com";
      author = "Alexander Vieth";
      homepage = "https://github.com/avieth/TypeNat";
      url = "";
      synopsis = "Some Nat-indexed types for GHC";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }