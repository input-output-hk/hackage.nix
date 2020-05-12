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
      identifier = { name = "pcf-font"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Michael Swan";
      maintainer = "mswan@fastmail.com";
      author = "Michael Swan";
      homepage = "https://github.com/michael-swan/pcf-font";
      url = "";
      synopsis = "PCF font parsing and rendering library.";
      description = "pcf-font is a library for parsing and rendering X11 PCF fonts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      };
    }