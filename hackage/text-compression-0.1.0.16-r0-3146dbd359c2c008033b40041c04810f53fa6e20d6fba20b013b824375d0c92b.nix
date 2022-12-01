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
      identifier = { name = "text-compression"; version = "0.1.0.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mattm.github@gmail.com";
      author = "Matthew Mosior";
      homepage = "https://github.com/Matthew-Mosior/text-compression";
      url = "";
      synopsis = "A text compression library.";
      description = "This package contains efficient implementations of various text compression algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }