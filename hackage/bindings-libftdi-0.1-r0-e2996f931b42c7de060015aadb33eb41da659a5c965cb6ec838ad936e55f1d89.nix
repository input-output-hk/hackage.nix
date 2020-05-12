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
      identifier = { name = "bindings-libftdi"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Joe";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to libftdi.";
      description = "<Project description>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libusb-1.0" or (errorHandler.pkgConfDepError "libusb-1.0"))
          (pkgconfPkgs."libftdi" or (errorHandler.pkgConfDepError "libftdi"))
          ];
        buildable = true;
        };
      };
    }