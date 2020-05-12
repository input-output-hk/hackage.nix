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
    flags = { all = false; unit = false; spartan3e = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava-cores"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
      url = "";
      synopsis = "FPGA Cores Written in Kansas Lava.";
      description = "Kansas Lava Cores is a collection of libraries, written in Kansas Lava,\nthat describe specific hardware components, as well as a Spartan3e\nboard monad and simulator, and testing framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kansas-lava" or (errorHandler.buildDepError "kansas-lava"))
          (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "spartan3e-demo" = {
          depends = if flags.spartan3e || flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."kansas-lava" or (errorHandler.buildDepError "kansas-lava"))
              (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
              (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.spartan3e || flags.all then true else false;
          };
        "kansas-lava-cores-tests" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."kansas-lava" or (errorHandler.buildDepError "kansas-lava"))
              (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
              (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.unit || flags.all then true else false;
          };
        };
      };
    }