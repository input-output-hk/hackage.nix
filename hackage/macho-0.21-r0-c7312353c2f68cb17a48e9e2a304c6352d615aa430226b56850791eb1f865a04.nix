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
      identifier = { name = "macho"; version = "0.21"; };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "http://code.fac9.com/macho/";
      url = "";
      synopsis = "Parser for Mach-O object format.";
      description = "Parser for Mach-O object format.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }