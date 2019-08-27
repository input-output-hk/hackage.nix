let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."handa-gdata" or (buildDepError "handa-gdata"))
          (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
          ];
        };
      exes = {
        "hsbencher-fusion-upload-criterion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."hsbencher-fusion" or (buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
            ];
          };
        "hsbencher-fusion-upload-csv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."hsbencher-fusion" or (buildDepError "hsbencher-fusion"))
            (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
            (hsPkgs."handa-gdata" or (buildDepError "handa-gdata"))
            ];
          };
        };
      };
    }