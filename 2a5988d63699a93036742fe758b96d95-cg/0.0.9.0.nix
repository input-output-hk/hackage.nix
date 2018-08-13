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
      specVersion = "1.10";
      identifier = {
        name = "cg";
        version = "0.0.9.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2015 Pepijn Kokke";
      maintainer = "pepijn.kokke@gmail.com";
      author = "Pepijn Kokke";
      homepage = "";
      url = "";
      synopsis = "Parser for categorial grammars.";
      description = "Parser for categorial grammars.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "CG" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.parallel)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            (hsPkgs.void)
            (hsPkgs.cereal)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }