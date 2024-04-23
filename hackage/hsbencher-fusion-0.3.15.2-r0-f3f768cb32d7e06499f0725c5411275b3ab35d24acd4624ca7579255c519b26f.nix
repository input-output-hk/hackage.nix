{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsbencher-fusion"; version = "0.3.15.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Backend for uploading benchmark data to Google Fusion Tables.";
      description = "Google Fusion tables are a type of Google Doc that resembles a\nSQL database more than a spreadsheet.  They have a web\ninterface and permissions model similar to toher google docs.\nMore information can be found at:\n<https://support.google.com/fusiontables/answer/2571232?hl=en>\n\nThis package provides both a library, which provides a plugin for use\nwith custom HSBencher harnesses, as well as executables for uploading\nalready existing benchmark data (from Criterion or an earlier HSBencher run)\nto the fusion table.\n\nChangeLog:\n\n* (0.3) Added RETRIES field to the core schema.\n\n* (0.3.3) Jump to new versions of handa-gdata, network, and http-conduit\n\n* (0.3.5) Add findTableId/makeTable/ensureColumns\n\n* (0.3.6) --variant command line argument for criterion uploader\n\n* (0.3.7) Routines for bulk-upload of rows.\n\n* (0.3.8) Add --threads to hsbencher-fusion-upload-criterion\n\n* (0.3.9) Change type of uploadRows\n\n* (0.3.10) Add -o to hsbencher-fusion-upload-csv\n\n* (0.3.11) Add --matchserver to hsbencher-fusion-upload-csv\n\n* (0.3.12) Add --runflags to hsbencher-fusion-upload-criterion\n\n* (0.3.13) Fix problem with blank lines.\n\n* (0.3.14) Bugfix #80\n\n* (0.3.15) add --custom to hsbencher-fusion-upload-criterion\n\n* (0.3.15.1) ghc 7.10.1 support";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."handa-gdata" or (errorHandler.buildDepError "handa-gdata"))
          (hsPkgs."hsbencher" or (errorHandler.buildDepError "hsbencher"))
        ];
        buildable = true;
      };
      exes = {
        "hsbencher-fusion-upload-criterion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."hsbencher-fusion" or (errorHandler.buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or (errorHandler.buildDepError "hsbencher"))
          ];
          buildable = true;
        };
        "hsbencher-fusion-upload-csv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."hsbencher-fusion" or (errorHandler.buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or (errorHandler.buildDepError "hsbencher"))
            (hsPkgs."handa-gdata" or (errorHandler.buildDepError "handa-gdata"))
          ];
          buildable = true;
        };
      };
    };
  }