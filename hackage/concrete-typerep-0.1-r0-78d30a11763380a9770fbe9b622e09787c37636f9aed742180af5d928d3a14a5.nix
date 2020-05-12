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
      identifier = { name = "concrete-typerep"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reiner.pope@gmail.com";
      author = "Reiner Pope";
      homepage = "";
      url = "";
      synopsis = "Binary and Hashable instances for TypeRep";
      description = "Binary and Hashable instances for TypeRep";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }