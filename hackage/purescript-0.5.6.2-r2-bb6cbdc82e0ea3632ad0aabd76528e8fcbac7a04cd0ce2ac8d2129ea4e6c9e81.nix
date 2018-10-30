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
        version = "0.5.6.2";
      };
      license = "MIT";
      copyright = "(c) 2013-14 Phil Freeman, (c) 2014 Gary Burgess, and other contributors";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>,\nGary Burgess <gary.burgess@gmail.com>,\nHardy Jones <jones3.hardy@gmail.com>";
      homepage = "http://www.purescript.org/";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to Javascript.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdtheline)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.pattern-arrows)
          (hsPkgs.monad-unify)
          (hsPkgs.xdg-basedir)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "psc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "psc-make" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "psci" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.haskeline)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
            (hsPkgs.xdg-basedir)
            (hsPkgs.cmdtheline)
          ];
        };
        "docgen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.purescript)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
            (hsPkgs.mtl)
          ];
        };
        "hierarchy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.purescript)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
          ];
        };
      };
    };
  }