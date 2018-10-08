{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      unsafe-checks = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "massiv";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Massiv (Массив) is an Array Library.";
      description = "Multi-dimensional Arrays with fusion, stencils and parallel computation.";
      buildType = "Simple";
    };
    components = {
      "massiv" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.unsupported-ghc-version);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.data-default)
            (hsPkgs.safe-exceptions)
            (hsPkgs.massiv)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
        };
      };
    };
  }