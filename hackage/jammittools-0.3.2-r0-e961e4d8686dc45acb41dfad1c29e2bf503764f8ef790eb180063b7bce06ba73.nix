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
      specVersion = "1.8";
      identifier = { name = "jammittools"; version = "0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "https://github.com/mtolly/jammittools";
      url = "";
      synopsis = "Export sheet music and audio from Windows/Mac app Jammit";
      description = "<http://www.jammit.com/ Jammit> is a service and associated app for Windows\\/Mac\\/iOS that sells isolated instrument audio tracks from popular music, along with full transcriptions.\nThis is a library and executable that allow you to export the sheet music (in PDF format) and audio (in WAV format) to tracks that you have purchased.\n\nAny sheet music or audio you export is solely for your own use, e.g. for use on Linux and Android devices that do not have the official app available.\nPlease do not use this tool to share content with others who have not purchased it!\n\nYou must install ImageMagick and Sox for sheet music and audio export respectively, because they are used to do the actual conversion.\nPlease see the <https://github.com/mtolly/jammittools/blob/master/README.md README> for usage information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."property-list" or (errorHandler.buildDepError "property-list"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "jammittools" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."jammittools" or (errorHandler.buildDepError "jammittools"))
            ];
          buildable = true;
          };
        };
      };
    }