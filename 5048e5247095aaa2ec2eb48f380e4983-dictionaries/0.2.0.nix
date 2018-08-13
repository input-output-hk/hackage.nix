{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dictionaries";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zohl@fmap.me";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "Tools to handle StarDict dictionaries.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dictionaries" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.dictionaries)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.tagged)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.dictionaries)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.text)
          ];
        };
      };
    };
  }