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
      specVersion = "1.4";
      identifier = { name = "egison"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "egisatoshi@gmail.com";
      author = "Satoshi Egi";
      homepage = "http://hagi.is.s.u-tokyo.ac.jp/~egi/egison/";
      url = "";
      synopsis = "Programming Language Egison";
      description = "Feature of this programming language is the strong\npattern match facility. This package include sample Egison programming\ncodes \"*-test.egi\" in \"sample/\" directory. You can download ELisp file\n\"egison-mode.el\" from the home page of Egison.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "egison" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
    };
  }