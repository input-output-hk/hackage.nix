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
      specVersion = "3.0";
      identifier = { name = "unac-bindings"; version = "0.1.0.0"; };
      license = "Unlicense";
      copyright = "";
      maintainer = "dias.h.bruno@gmail.com";
      author = "Bruno Dias";
      homepage = "";
      url = "";
      synopsis = "Bindings for libunac(3)";
      description = "haskell bindings for unac(3)\n\nthis package doesn't bind (yet) all functionalities\nof unac(3), but the most used one `unac_string`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."unac" or (errorHandler.sysDepError "unac")) ];
        buildable = true;
      };
      tests = {
        "UnacBindingsTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unac-bindings" or (errorHandler.buildDepError "unac-bindings"))
          ];
          buildable = true;
        };
      };
    };
  }