{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsbencher-fusion"; version = "0.3.15.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."handa-gdata" or ((hsPkgs.pkgs-errors).buildDepError "handa-gdata"))
          (hsPkgs."hsbencher" or ((hsPkgs.pkgs-errors).buildDepError "hsbencher"))
          ];
        buildable = true;
        };
      exes = {
        "hsbencher-fusion-upload-criterion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."hsbencher-fusion" or ((hsPkgs.pkgs-errors).buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or ((hsPkgs.pkgs-errors).buildDepError "hsbencher"))
            ];
          buildable = true;
          };
        "hsbencher-fusion-upload-csv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."hsbencher-fusion" or ((hsPkgs.pkgs-errors).buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or ((hsPkgs.pkgs-errors).buildDepError "hsbencher"))
            (hsPkgs."handa-gdata" or ((hsPkgs.pkgs-errors).buildDepError "handa-gdata"))
            ];
          buildable = true;
          };
        };
      };
    }