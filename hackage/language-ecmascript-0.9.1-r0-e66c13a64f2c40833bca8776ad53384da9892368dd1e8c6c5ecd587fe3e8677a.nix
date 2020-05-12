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
      identifier = { name = "language-ecmascript"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
      homepage = "http://github.com/jswebtools/language-ecmascript";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "Some tools for working with ECMAScript 3 (popularly known as JavaScript).\nIncludes a parser, pretty-printer, and basic building blocks for more\nsophisticated tools.\nThis package used to be called WebBits.";
      buildType = "Simple";
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
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      tests = {
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }