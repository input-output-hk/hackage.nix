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
      identifier = { name = "gnuidn"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Bindings for GNU IDN";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."idn" or (errorHandler.sysDepError "idn")) ];
        pkgconfig = [
          (pkgconfPkgs."libidn" or (errorHandler.pkgConfDepError "libidn"))
          ];
        buildable = true;
        };
      };
    }