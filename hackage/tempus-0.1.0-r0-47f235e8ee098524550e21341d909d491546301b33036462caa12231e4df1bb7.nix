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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tempus"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010, Matthias Reisner";
      maintainer = "Matthias Reisner <matthias.reisner@googlemail.com>";
      author = "Matthias Reisner";
      homepage = "";
      url = "";
      synopsis = "Interpreter for the FRP language Tempus";
      description = "This package provides an interactive console application for loading of modules,\ndefinition of types and values, as well as type checking and evaluation of\nexpressions in the functional reactive language Tempus.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tempus" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            ];
          buildable = true;
          };
        };
      };
    }