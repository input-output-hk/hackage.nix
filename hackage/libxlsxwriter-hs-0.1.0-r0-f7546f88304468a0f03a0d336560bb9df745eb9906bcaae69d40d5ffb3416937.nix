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
      identifier = { name = "libxlsxwriter-hs"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Supercede Technology Ltd <tech@supercede.com>";
      author = "Supercede Technology Ltd";
      homepage = "";
      url = "";
      synopsis = "Bindings to libxlsxwriter";
      description = "Bindings to the libxlsxwriter C library. Please refer to the upstream documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [
          (pkgs."xlsxwriter" or (errorHandler.sysDepError "xlsxwriter"))
        ];
        buildable = true;
      };
    };
  }