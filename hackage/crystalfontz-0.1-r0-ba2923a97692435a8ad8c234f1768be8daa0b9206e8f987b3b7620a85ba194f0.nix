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
      specVersion = "1.2";
      identifier = { name = "crystalfontz"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Control Crystalfontz LCD displays.";
      description = "Control a Crystalfontz LCD display over a serial (often USB) port.  Devices\nand commands are implemented as needed, so the library is not comprehensive.\nSuggestions and patches are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."crc16-table" or (errorHandler.buildDepError "crc16-table"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
        ];
        buildable = true;
      };
    };
  }