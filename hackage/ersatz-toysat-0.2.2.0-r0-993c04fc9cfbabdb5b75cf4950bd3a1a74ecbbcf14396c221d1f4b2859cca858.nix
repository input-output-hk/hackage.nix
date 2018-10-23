{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ersatz-toysat";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/ersatz-toysat";
      url = "";
      synopsis = "toysat driver as backend for ersatz";
      description = "toysat driver as backend for ersatz";
      buildType = "Simple";
    };
    components = {
      "ersatz-toysat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.ersatz)
          (hsPkgs.toysolver)
        ];
      };
      exes = {
        "ersatz-toysat-regexp-grid" = {
          depends  = pkgs.lib.optionals (flags.examples) ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ersatz)
            (hsPkgs.ersatz-toysat)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim));
        };
        "ersatz-toysat-sudoku" = {
          depends  = pkgs.lib.optionals (flags.examples) ([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.ersatz)
            (hsPkgs.ersatz-toysat)
            (hsPkgs.mtl)
          ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim));
        };
      };
    };
  }