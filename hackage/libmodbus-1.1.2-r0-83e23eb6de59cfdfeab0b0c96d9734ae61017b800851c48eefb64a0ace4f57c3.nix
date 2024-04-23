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
      specVersion = "1.10";
      identifier = { name = "libmodbus"; version = "1.1.2"; };
      license = "BSD-2-Clause";
      copyright = "2019 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the C modbus library";
      description = "This library supports Modbus communication over both TCP and serial ports.\n\nIt is a FFI to the C modbus library from https://libmodbus.org/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."modbus" or (errorHandler.sysDepError "modbus")) ];
        buildable = true;
      };
    };
  }