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
      specVersion = "1.6";
      identifier = { name = "AttoJson"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mr_konn _at_ jcom.home.ne.jp";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/AttoJSON";
      url = "";
      synopsis = "Simple lightweight JSON parser, generator & manipulator based on ByteString";
      description = "Simple Lightweight JSON parser & generator based on ByteString.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }