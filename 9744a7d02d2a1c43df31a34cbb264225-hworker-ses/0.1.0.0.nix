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
        name = "hworker-ses";
        version = "0.1.0.0";
      };
      license = "ISC";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "http://github.com/dbp/hworker-ses";
      url = "";
      synopsis = "Library for sending email with Amazon's SES and hworker";
      description = "See README.";
      buildType = "Simple";
    };
    components = {
      "hworker-ses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hworker)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-ses)
          (hsPkgs.lens)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }