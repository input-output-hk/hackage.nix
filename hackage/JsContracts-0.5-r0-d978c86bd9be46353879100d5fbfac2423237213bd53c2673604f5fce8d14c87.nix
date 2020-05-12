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
      specVersion = "1.2.3";
      identifier = { name = "JsContracts"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2009 Arjun Guha and Spiridon Eliopoulos";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha and Spiridon Eliopoulos";
      homepage = "http://www.cs.brown.edu/research/plt/";
      url = "";
      synopsis = "Design-by-contract for JavaScript";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."WebBits" or (errorHandler.buildDepError "WebBits"))
          (hsPkgs."WebBits-Html" or (errorHandler.buildDepError "WebBits-Html"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "jscc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."WebBits" or (errorHandler.buildDepError "WebBits"))
            (hsPkgs."WebBits-Html" or (errorHandler.buildDepError "WebBits-Html"))
            ];
          buildable = true;
          };
        };
      };
    }