{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HUnit";
        version = "1.2.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hunit@richardg.name";
      author = "Dean Herington";
      homepage = "http://hunit.sourceforge.net/";
      url = "";
      synopsis = "A unit testing framework for Haskell";
      description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ] ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }