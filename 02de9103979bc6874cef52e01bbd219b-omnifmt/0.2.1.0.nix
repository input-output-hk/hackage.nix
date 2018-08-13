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
        name = "omnifmt";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/omnifmt";
      url = "";
      synopsis = "A pretty-printer wrapper to faciliate ease of formatting during development.";
      description = "omnifmt automatically formats code via external pretty-printers.\nThe idea was taken from gofmt, just with a bit of expansion to more languages.";
      buildType = "Simple";
    };
    components = {
      "omnifmt" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "omnifmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.fast-logger)
            (hsPkgs.filepath)
            (hsPkgs.omnifmt)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-parallel)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }