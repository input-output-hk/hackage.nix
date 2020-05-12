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
      specVersion = "1.8";
      identifier = { name = "adobe-swatch-exchange"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "https://github.com/stepcut/ase2css";
      url = "";
      synopsis = "parse Adobe Swatch Exchange files and (optionally) output .css files with the colors";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."language-css" or (errorHandler.buildDepError "language-css"))
          ];
        buildable = true;
        };
      exes = {
        "ase2css" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
            (hsPkgs."language-css" or (errorHandler.buildDepError "language-css"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }