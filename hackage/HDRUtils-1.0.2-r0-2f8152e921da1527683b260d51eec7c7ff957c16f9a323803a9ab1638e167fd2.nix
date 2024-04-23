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
      identifier = { name = "HDRUtils"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Jeff Heard";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "http://vis.renci.org/jeff/pfs";
      url = "";
      synopsis = "Utilities for reading, manipulating, and writing HDR images";
      description = "PFS is a library for manipulating Portable Floating-point Streams, an interchange\nformat for high-dynamic range images.  You will need pfstools for this library to work properly.\npfstools can be found at http://pfstools.sourceforge.net/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = [ (pkgs."pfs-1.2" or (errorHandler.sysDepError "pfs-1.2")) ];
        buildable = true;
      };
    };
  }