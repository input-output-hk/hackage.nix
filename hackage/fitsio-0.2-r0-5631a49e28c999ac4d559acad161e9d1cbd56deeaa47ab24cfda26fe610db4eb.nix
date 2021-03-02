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
      identifier = { name = "fitsio"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nubgames@gmail.com";
      author = "Eric Sessoms <nubgames@gmail.com>";
      homepage = "http://github.com/esessoms/fitsio";
      url = "";
      synopsis = "A library for reading and writing data files in the FITS data format.";
      description = "FITS (Flexible Image Transport System) is self-describing data format used\nheavily in astronomy and high-energy physics.  Right now this library is just\nan FFI wrapper, but higher-level functionality is planned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [ (pkgs."cfitsio" or (errorHandler.sysDepError "cfitsio")) ];
        buildable = true;
        };
      };
    }