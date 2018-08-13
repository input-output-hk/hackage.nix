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
      specVersion = "1.14";
      identifier = {
        name = "hpath";
        version = "0.7.2";
      };
      license = "GPL-2.0-only";
      copyright = "Julian Ospald 2016";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "Support for well-typed paths";
      description = "Support for well-typed paths, utilizing ByteString under the hood.";
      buildType = "Simple";
    };
    components = {
      "hpath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.hspec)
          (hsPkgs.simple-sendfile)
          (hsPkgs.unix)
          (hsPkgs.unix-bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.word8)
        ];
      };
      tests = {
        "doctests-hpath" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            (hsPkgs.hpath)
          ];
        };
        "doctests-posix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.hpath)
            (hsPkgs.doctest)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.hpath)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.utf8-string)
          ];
        };
      };
      benchmarks = {
        "bench.hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hpath)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }