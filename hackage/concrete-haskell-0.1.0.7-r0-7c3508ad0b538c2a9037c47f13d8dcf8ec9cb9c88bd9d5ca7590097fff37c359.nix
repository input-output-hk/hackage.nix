{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concrete-haskell";
        version = "0.1.0.7";
      };
      license = "LicenseRef-GPL";
      copyright = "2017";
      maintainer = "tom@cs.jhu.edu";
      author = "Thomas Lippincott";
      homepage = "https://github.com/hltcoe";
      url = "";
      synopsis = "Library for the Concrete data format.";
      description = "Library for the Concrete data format.";
      buildType = "Simple";
    };
    components = {
      "concrete-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.thrift)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.uuid)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.attoparsec)
          (hsPkgs.megaparsec)
          (hsPkgs.scientific)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "ingest_communications" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.concrete-haskell)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.zlib)
          ];
        };
        "inspect_communications" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.concrete-haskell)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }