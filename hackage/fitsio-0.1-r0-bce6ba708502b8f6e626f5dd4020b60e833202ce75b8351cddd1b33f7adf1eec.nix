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
      identifier = { name = "fitsio"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "esessoms at mac dot com";
      author = "Eric Sessoms";
      homepage = "";
      url = "";
      synopsis = "A library for reading and writing data files in the FITS data format.";
      description = "FITS (Flexible Image Transport System) is self-describing data format used\nheavily in astronomy and high-energy physics.  Right now this library is just\nan FFI wrapper, but higher-level functionality is planned.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }