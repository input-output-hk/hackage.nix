{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "alpha";
        version = "1.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "http://www.alpha-lang.info/";
      url = "";
      synopsis = "A compiler for the Alpha language";
      description = "Alpha is a programming language that aims at being very simple and\nlow-level, so as to be efficient, while at the same time\nbeing able to climb in abstraction through introspection\nin the Lisp Way.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "alpha" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bimap)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.cereal)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
            (hsPkgs.bindings-posix)
            (hsPkgs.AvlTree)
            (hsPkgs.COrdering)
            (hsPkgs.cpphs)
          ];
        };
      };
    };
  }