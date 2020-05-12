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
      identifier = { name = "scalable-server"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamie@bu.mp";
      author = "Jamie Turner";
      homepage = "https://github.com/jamwt/haskell-scalable-server/";
      url = "";
      synopsis = "Library for writing fast/scalable TCP-based services";
      description = "Library for writing fast/scalable TCP-based services";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
          (hsPkgs."network-enumerator" or (errorHandler.buildDepError "network-enumerator"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          ];
        buildable = true;
        };
      };
    }