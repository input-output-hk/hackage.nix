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
        version = "0.3.15.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Backend for uploading benchmark data to Google Fusion Tables.";
      description = "Google Fusion tables are a type of Google Doc that resembles a\nSQL database more than a spreadsheet.  They have a web\ninterface and permissions model similar to toher google docs.\nMore information can be found at:\n<https://support.google.com/fusiontables/answer/2571232?hl=en>\n\nChangeLog:\n\n* (0.3) Added RETRIES field to the core schema.\n* (0.3.3) Jump to new versions of handa-gdata, network, and http-conduit\n* (0.3.5) Add findTableId/makeTable/ensureColumns\n* (0.3.6) --variant command line argument for criterion uploader\n* (0.3.7) Routines for bulk-upload of rows.\n* (0.3.8) Add --threads to hsbencher-fusion-upload-criterion\n* (0.3.9) Change type of uploadRows\n* (0.3.10) Add -o to hsbencher-fusion-upload-csv\n* (0.3.11) Add --matchserver to hsbencher-fusion-upload-csv\n* (0.3.12) Add --runflags to hsbencher-fusion-upload-criterion\n* (0.3.13) Fix problem with blank lines.\n* (0.3.14) Bugfix #80\n* (0.3.15) add --custom to hsbencher-fusion-upload-criterion\n* (0.3.15.1) ghc 7.10.1 support";
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
            (hsPkgs.split)
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
            (hsPkgs.handa-gdata)
          ];
        };
      };
    };
  }