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
      specVersion = "1.8";
      identifier = {
        name = "purescript";
        version = "0.3.11";
      };
      license = "MIT";
      copyright = "(c) 2013-14 Phil Freeman, (c) 2014 Gary Burgess, and other contributors";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>, Gary Burgess <gary.burgess@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small compile-to-JS language with extensible records and type-safe blocks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdtheline)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.pattern-arrows)
          (hsPkgs.monad-unify)
        ];
      };
      exes = {
        "psc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.syb)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "psci" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.haskeline)
            (hsPkgs.purescript)
            (hsPkgs.syb)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
          ];
        };
        "docgen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.purescript)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.syb)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
          ];
        };
      };
    };
  }