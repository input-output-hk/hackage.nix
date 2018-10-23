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
        name = "hsbencher-fusion";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Backend for uploading benchmark data to Google Fusion Tables.";
      description = "Google Fusion tables are a type of Google Doc that resembles a\nSQL database more than a spreadsheet.  They have a web\ninterface and permissions model similar to toher google docs.\nMore information can be found at:\n<https://support.google.com/fusiontables/answer/2571232?hl=en>\n\nChangeLog:\n\n* (0.3) Added RETRIES field to the core schema.\n* (0.3.3) Jump to new versions of handa-gdata, network, and http-conduit";
      buildType = "Simple";
    };
    components = {
      "hsbencher-fusion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.handa-gdata)
          (hsPkgs.hsbencher)
        ];
      };
      exes = {
        "hsbencher-fusion-upload-criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.mtl)
            (hsPkgs.hsbencher-fusion)
            (hsPkgs.hsbencher)
          ];
        };
        "hsbencher-fusion-upload-csv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.csv)
            (hsPkgs.hsbencher-fusion)
            (hsPkgs.hsbencher)
          ];
        };
      };
    };
  }