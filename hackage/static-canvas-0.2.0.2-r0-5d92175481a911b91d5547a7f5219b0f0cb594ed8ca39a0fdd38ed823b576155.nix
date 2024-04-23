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
      identifier = { name = "static-canvas"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Jeffrey Rosenbluth";
      maintainer = "jeffrey.rosenbluth@gmail.com";
      author = "Jeffrey Rosenbluth";
      homepage = "https://github.com/jeffreyrosenbluth/static-canvas";
      url = "";
      synopsis = "DSL to generate HTML5 Canvas javascript.";
      description = "A simple DSL for writing HTML5 Canvas in haskell and converting it\nto Javascript. By static we mean non-interactive, so the parts of\nthe Canvas API that need to query the browser for run time information\nlike `isPointInPath(x, y)` are not included. This turns out to be\na surprisingly small part of HTML5 Canvas.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
        ];
        buildable = true;
      };
    };
  }