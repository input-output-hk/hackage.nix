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
      specVersion = "1.10";
      identifier = {
        name = "clr-typed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-typed";
      url = "";
      synopsis = "A strongly typed Haskell interface to the CLR type system";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tuple)
          (hsPkgs.text)
          (hsPkgs.ghc-prim)
          (hsPkgs.clr-marshal)
        ];
      };
      tests = {
        "clr-typed-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clr-typed)
          ];
        };
      };
    };
  }