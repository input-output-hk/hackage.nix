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
      identifier = { name = "rtlsdr"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "";
      url = "";
      synopsis = "Bindings to librtlsdr";
      description = "Bindings to librtlsdr. Turns your Realtek RTL2832 based DVB dongle into a SDR receiver.\n\nFor more information see: <http://sdr.osmocom.org/trac/wiki/rtl-sdr>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."rtlsdr" or (errorHandler.sysDepError "rtlsdr")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }