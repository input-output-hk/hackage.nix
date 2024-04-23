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
    flags = { test = false; executable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "vhd"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Citrix Systems Inc.";
      maintainer = "jonathan.knowles@eu.citrix.com";
      author = "Jonathan Knowles, Vincent Hanquez";
      homepage = "https://github.com/jonathanknowles/hs-vhd";
      url = "";
      synopsis = "Implementation of the Virtual Hard Disk (VHD) disk format";
      description = "Provide a toolbox of function to manipulate VHD files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."storable-endian" or (errorHandler.buildDepError "storable-endian"))
        ];
        buildable = true;
      };
      exes = {
        "Tests" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = if flags.test then true else false;
        };
        "vhd" = {
          depends = pkgs.lib.optional (flags.executable) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.executable then true else false;
        };
      };
    };
  }