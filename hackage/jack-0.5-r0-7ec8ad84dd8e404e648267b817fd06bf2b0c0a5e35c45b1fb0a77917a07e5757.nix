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
      specVersion = "1.0";
      identifier = { name = "jack"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://open-projects.net/~shahn/index.php?seite=code";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."jack" or (errorHandler.sysDepError "jack")) ];
        buildable = true;
        };
      exes = {
        "amplify" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."jack" or (errorHandler.sysDepError "jack")) ];
          buildable = true;
          };
        };
      };
    }