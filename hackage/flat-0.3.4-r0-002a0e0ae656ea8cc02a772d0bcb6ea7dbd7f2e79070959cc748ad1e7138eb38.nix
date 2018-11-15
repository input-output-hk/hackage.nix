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
        name = "flat";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://quid2.org";
      url = "";
      synopsis = "Principled and efficient bit-oriented binary serialization.";
      description = "Principled and efficient bit-oriented binary serialization, check the <http://github.com/Quid2/flat online tutorial>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.dlist)
          (hsPkgs.vector)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.mono-traversable)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.flat)
          ];
        };
      };
    };
  }