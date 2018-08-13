{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "liquidhaskell";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2010-13 Ranjit Jhala, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala";
      homepage = "http://goto.ucsd.edu/liquidhaskell";
      url = "";
      synopsis = "Liquid Types for Haskell";
      description = "Liquid Types for Haskell.";
      buildType = "Simple";
    };
    components = {
      "liquidhaskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bifunctors)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.Diff)
          (hsPkgs.filemanip)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.hscolour)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.liquid-fixpoint)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "liquid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ansi-terminal)
            (hsPkgs.bifunctors)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.cpphs)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.Diff)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.hscolour)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.liquid-fixpoint)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }