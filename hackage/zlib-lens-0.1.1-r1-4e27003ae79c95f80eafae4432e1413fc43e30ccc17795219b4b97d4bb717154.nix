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
      identifier = { name = "zlib-lens"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "lens.github.io";
      url = "";
      synopsis = "Lenses for zlib";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }