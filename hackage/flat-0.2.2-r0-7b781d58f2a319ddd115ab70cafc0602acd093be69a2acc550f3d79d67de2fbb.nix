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
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/flat";
      url = "";
      synopsis = "Principled and efficient bit-oriented binary serialization.";
      description = "See the <http://github.com/tittoassini/flat online tutorial>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.ghc-prim)
          (hsPkgs.mono-traversable)
          (hsPkgs.pretty)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "flat-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cpu)
            (hsPkgs.ghc-prim)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.derive)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.flat)
          ];
        };
      };
    };
  }