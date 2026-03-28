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
      specVersion = "2.2";
      identifier = { name = "fontwhich"; version = "0.3"; };
      license = "GPL-3.0-or-later";
      copyright = "2026  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/fontwhich";
      url = "";
      synopsis = "Determine fonts used to render text";
      description = "Fontwhich is a commandline tool that used pango to determine which\ndefault fonts would be used to render some text, or which font\nwould be used for a particular language script.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fontwhich" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
            (hsPkgs."gi-pangocairo" or (errorHandler.buildDepError "gi-pangocairo"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
          ];
          buildable = true;
        };
      };
    };
  }