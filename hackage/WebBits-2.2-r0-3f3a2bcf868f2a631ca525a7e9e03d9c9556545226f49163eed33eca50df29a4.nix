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
      identifier = { name = "WebBits"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2011 Brown University, Claudiu Saftoiu,  Arjun Guha, Spiridon Eliopoulos, Copyright (c) 2012 Arjun Guha and Andrey Chudnov";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Arjun Guha, Claudiu Saftoiu, Spiridon Eliopoulos and Andrey Chudnov";
      homepage = "http://github.com/brownplt/webbits";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "WebBits is a collection of libraries for working with JavaScript, contains a parser, a pretty-printer and a lexical environment analyser. The original author of the package is the PLT group of Brown University (http:\\/\\/www.cs.brown.edu\\/research\\/plt\\/). Changes since version 2.1: the syntax of the try-catch-finally statement has been changed in accordance to the ECMAScript specification -- now it only has at most one catch clause. The original test-suite needs updating to support the current test system: patches are welcome.";
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
        ];
        buildable = true;
      };
    };
  }