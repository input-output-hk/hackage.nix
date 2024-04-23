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
      identifier = { name = "hcwiid"; version = "0.0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "https://github.com/ivanperez-keera/hcwiid";
      url = "";
      synopsis = "Library to interface with the wiimote";
      description = "HCWiid is a working userspace driver along with various\napplications implementing event drivers, multiple\nwiimote\tconnectivity, gesture recognition,\nand other Wiimote-based functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = [
          (pkgs."bluetooth" or (errorHandler.sysDepError "bluetooth"))
          (pkgs."cwiid" or (errorHandler.sysDepError "cwiid"))
        ];
        buildable = true;
      };
    };
  }