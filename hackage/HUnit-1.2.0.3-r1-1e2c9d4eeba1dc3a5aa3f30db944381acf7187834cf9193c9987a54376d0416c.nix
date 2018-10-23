{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HUnit";
        version = "1.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Dean Herington";
      homepage = "http://hunit.sourceforge.net/";
      url = "";
      synopsis = "A unit testing framework for Haskell";
      description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
      buildType = "Simple";
    };
    components = {
      "HUnit" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }