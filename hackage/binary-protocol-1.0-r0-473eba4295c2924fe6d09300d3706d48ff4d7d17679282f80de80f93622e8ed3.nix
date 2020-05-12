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
      identifier = { name = "binary-protocol"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/binary-protocol";
      url = "";
      synopsis = "Monad to ease implementing a binary network protocol.";
      description = "Monad to ease implementing a binary network protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }