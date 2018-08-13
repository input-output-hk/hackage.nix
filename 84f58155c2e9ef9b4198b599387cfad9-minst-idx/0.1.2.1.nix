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
      specVersion = "1.16";
      identifier = {
        name = "minst-idx";
        version = "0.1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/minst-idx/";
      url = "";
      synopsis = "Read and write IDX data that is used in e.g. the MINST database.";
      description = "This package provides functionality to read and write data in the IDX\nbinary format. This format is relevant for machine learning applications,\nlike the MINST handwritten digit database.";
      buildType = "Simple";
    };
    components = {
      "minst-idx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.vector)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.minst-idx)
          ];
        };
      };
    };
  }