{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dvi-processing";
        version = "0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Read/write DVI and TFM file";
      description = "Read/write DVI and TFM file, including typesetting and other features";
      buildType = "Simple";
    };
    components = {
      "dvi-processing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
        ];
      };
    };
  }