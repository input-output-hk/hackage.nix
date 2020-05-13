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
      identifier = { name = "spir-v"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "spir.of.the.moment@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/spir-v";
      url = "";
      synopsis = "Some utilities for reading and writing SPIR-V files";
      description = "This package exposes information scraped from the SPIR-V spec found here: https://www.khronos.org/registry/spir-v/specs/1.0/SPIRV.html\nThis is a very early version, it's not quite ready to be used";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }