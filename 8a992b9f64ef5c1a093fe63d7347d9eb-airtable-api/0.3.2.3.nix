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
        name = "airtable-api";
        version = "0.3.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "AlphaSheets, Inc";
      maintainer = "Anand Srinivasan";
      author = "Anand Srinivasan";
      homepage = "https://github.com/ooblahman/airtable-api";
      url = "";
      synopsis = "Requesting and introspecting Tables within an Airtable project.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "airtable-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.wreq)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
        ];
      };
      tests = {
        "airtable-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.airtable-api)
          ];
        };
      };
    };
  }