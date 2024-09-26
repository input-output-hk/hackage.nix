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
      specVersion = "3.0";
      identifier = { name = "mpd-current-json"; version = "1.5.0.0"; };
      license = "Unlicense";
      copyright = "";
      maintainer = "g@11xx.org";
      author = "Lucas G";
      homepage = "https://codeberg.org/useless-utils/mpd-current-json";
      url = "";
      synopsis = "Print current MPD song and status as JSON";
      description = "Print currently playing MPD's song metadata and status as JSON";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."libmpd" or (errorHandler.buildDepError "libmpd"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      exes = {
        "mpd-current-json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libmpd" or (errorHandler.buildDepError "libmpd"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."mpd-current-json" or (errorHandler.buildDepError "mpd-current-json"))
          ];
          buildable = true;
        };
      };
    };
  }