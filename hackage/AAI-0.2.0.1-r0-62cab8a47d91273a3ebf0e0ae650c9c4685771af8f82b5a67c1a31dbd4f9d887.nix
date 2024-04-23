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
      identifier = { name = "AAI"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 Nils 'bash0r' Jonsson";
      maintainer = "aka.bash0r@gmail.com";
      author = "Nils 'bash0r' Jonsson";
      homepage = "";
      url = "";
      synopsis = "Abstract Application Interface.";
      description = "The Abstract Application Interface is used to define a\ngeneric interface for handling command line parameter\nto command mapping. It may route a command by giving a\nsimple parameter list and a list of supported commands.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }