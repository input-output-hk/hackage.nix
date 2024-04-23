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
      identifier = { name = "udcode"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Mark Jason Dominus, Walt \"BMeph\" Rorie-Baety";
      maintainer = "black.meph@gmail.com";
      author = "Walt \"BMeph\" Rorie-Baety";
      homepage = "";
      url = "";
      synopsis = "Does a set of code words form a uniquely decodable code?";
      description = "A Haskell-based write-up of Mark Jason Dominus' perl UDCode package. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }