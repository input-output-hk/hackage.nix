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
      identifier = { name = "align-equal"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "vpark45@gmail.com";
      author = "Joonkyu Park (based on original work by Gabriella Gonzalez)";
      homepage = "";
      url = "";
      synopsis = "Aligns text prefixes before '=' for consistent formatting";
      description = "A utility to adjust text lines by padding spaces before '=' based on the longest prefix.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "align-equal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }