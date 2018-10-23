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
        name = "stdf";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "415fox@gmail.com";
      author = "Michael Fox";
      homepage = "https://github.com/gitfoxi/Stdf";
      url = "";
      synopsis = "Parse Structured Test Data Format (STDF)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "stdf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.base64-bytestring)
          (hsPkgs.aeson)
          (hsPkgs.split)
        ];
      };
      exes = {
        "StdfToJson" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.text)
            (hsPkgs.base64-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.split)
            (hsPkgs.stdf)
          ];
        };
        "WaferMap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.text)
            (hsPkgs.base64-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.split)
            (hsPkgs.stdf)
          ];
        };
      };
    };
  }