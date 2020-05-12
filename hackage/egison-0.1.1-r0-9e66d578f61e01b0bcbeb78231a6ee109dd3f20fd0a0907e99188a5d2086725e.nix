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
      identifier = { name = "egison"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "egisatoshi@gmail.com";
      author = "Satoshi Egi";
      homepage = "http://hagi.is.s.u-tokyo.ac.jp/~egi/egison/";
      url = "";
      synopsis = "An Interpreter for the Programming Language Egison";
      description = "An interpreter for the programming language Egison.\nA eature of Egison is the strong pattern match facility.\nThis package include sample Egison program codes \"*-test.egi\" in \"etc/sample/\" directory.\nThis package also include Emacs Lisp file \"egison-mode.el\" in \"etc/elisp/\" directory.";
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