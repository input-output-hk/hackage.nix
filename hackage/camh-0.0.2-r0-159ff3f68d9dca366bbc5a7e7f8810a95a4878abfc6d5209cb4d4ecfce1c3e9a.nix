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
      identifier = { name = "camh"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
      author = "Hironao Komatsu";
      homepage = "not yet available";
      url = "";
      synopsis = "Image converter to 256-colored text.";
      description = "Camh is a program to display image files onto text terminals.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "camh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
            (hsPkgs."Imlib" or (errorHandler.buildDepError "Imlib"))
          ];
          buildable = true;
        };
      };
    };
  }