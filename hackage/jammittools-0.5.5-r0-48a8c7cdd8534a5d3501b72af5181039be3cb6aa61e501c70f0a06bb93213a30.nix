{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "jammittools"; version = "0.5.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "https://github.com/mtolly/jammittools";
      url = "";
      synopsis = "Export sheet music and audio from Windows/Mac app Jammit";
      description = "<http://www.jammit.com/ Jammit> is a service and associated app for Windows\\/Mac\\/iOS that sells isolated instrument audio tracks from popular music, along with full transcriptions.\nThis is a library and executable that allow you to export the sheet music (in PDF format) and audio (in WAV format) to tracks that you have purchased.\n\nAny sheet music or audio you export is solely for your own use, e.g. for use on Linux and Android devices that do not have the official app available.\nPlease do not use this tool to share content with others who have not purchased it!\n\nPlease see the <https://github.com/mtolly/jammittools/blob/master/README.md README> for usage information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."HPDF" or ((hsPkgs.pkgs-errors).buildDepError "HPDF"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."conduit-audio" or ((hsPkgs.pkgs-errors).buildDepError "conduit-audio"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          ];
        buildable = true;
        };
      exes = {
        "jammittools" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
            (hsPkgs."jammittools" or ((hsPkgs.pkgs-errors).buildDepError "jammittools"))
            ];
          buildable = true;
          };
        };
      };
    }