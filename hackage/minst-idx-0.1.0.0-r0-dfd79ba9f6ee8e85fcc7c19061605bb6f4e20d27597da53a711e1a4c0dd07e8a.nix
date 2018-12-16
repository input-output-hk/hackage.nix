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
        name = "minst-idx";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/minst-idx/";
      url = "";
      synopsis = "Read and write data in the IDX format used in e.g. the MINST database.";
      description = "This package provides functionality to read and write data in the IDX\nbinary format. This format is relevant for machine learning applications,\nlike the MINST handwritten digit database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
        ];
      };
    };
  }