{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "egison";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "egisatoshi@gmail.com";
      author = "Satoshi Egi";
      homepage = "http://hagi.is.s.u-tokyo.ac.jp/~egi/egison/";
      url = "";
      synopsis = "An Interpreter for the Programming Language Egison";
      description = "An interpreter for the programming language Egison.\nA feature of Egison is the strong pattern match facility.\nWith Egison, you can represent pattern matching for non-inductive data intuitively,\nespecially for collection data, such as lists, multisets, sets, and so on.\nThis package include sample Egison program codes \"*-test.egi\" in \"etc/sample/\" directory.\nThis package also include Emacs Lisp file \"egison-mode.el\" in \"etc/elisp/\" directory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "egison" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }