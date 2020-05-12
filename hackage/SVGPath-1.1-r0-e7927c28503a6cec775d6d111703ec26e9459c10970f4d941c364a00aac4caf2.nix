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
      identifier = { name = "SVGPath"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Parsing the path command of SVG";
      description = "Parsing the path command of SVG";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }