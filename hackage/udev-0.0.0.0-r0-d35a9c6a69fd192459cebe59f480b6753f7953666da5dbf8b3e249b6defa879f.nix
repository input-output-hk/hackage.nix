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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "udev"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "pxqr.sta@gmail.com";
      author = "Sam Truzjan";
      homepage = "https://github.com/pxqr/udev";
      url = "";
      synopsis = "libudev bindings";
      description = "libudev bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libudev" or (errorHandler.pkgConfDepError "libudev"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hidraw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."udev" or (errorHandler.buildDepError "udev"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "monitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."udev" or (errorHandler.buildDepError "udev"))
            (hsPkgs."select" or (errorHandler.buildDepError "select"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }