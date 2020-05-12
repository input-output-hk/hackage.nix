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
      specVersion = "2.0";
      identifier = { name = "contiguous-checked"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/contiguous-checked";
      url = "";
      synopsis = "contiguous with bounds checks";
      description = "A drop-in replacement for `contiguous` where all the functions\nchecks bounds at runtime. This is less efficient but gives\nhelpful error messages instead of segfaulting. It is intended\nto be used when testing software.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          ];
        buildable = true;
        };
      };
    }