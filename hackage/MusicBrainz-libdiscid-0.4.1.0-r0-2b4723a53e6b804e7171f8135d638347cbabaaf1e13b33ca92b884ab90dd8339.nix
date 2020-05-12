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
      specVersion = "1.6";
      identifier = { name = "MusicBrainz-libdiscid"; version = "0.4.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2013 André Twupack";
      maintainer = "André Twupack";
      author = "André Twupack";
      homepage = "https://github.com/atwupack/MusicBrainz-libdiscid";
      url = "";
      synopsis = "Binding to libdiscid by MusicBrainz";
      description = "Binding to libdiscid by MusicBrainz.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."winmm" or (errorHandler.sysDepError "winmm"));
        buildable = true;
        };
      };
    }