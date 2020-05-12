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
      specVersion = "1.8";
      identifier = { name = "SWMMoutGetMB"; version = "0.1.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "siddhanathan@gmail.com";
      author = "Siddhanathan Shanmugam";
      homepage = "https://github.com/siddhanathan/SWMMoutGetMB";
      url = "";
      synopsis = "A parser for SWMM 5 binary .OUT files";
      description = "The United States Environmental Protection Agency (EPA) Storm Water\nManagement Model (SWMM) is a dynamic hydrology-hydraulic water\nquality simulation model for single event or long-term (continuous)\nsimulation of runoff quantity and quality from primarily urban areas.\nSWMM 5, which is currently the newest version of SWMM, produces a\nbinary .OUT file as its output.  SWMMoutGetMB is a SWMM binary\nreader using the Get monad in Haskell to retrieve contents of this\nbinary file and save it into a SWMMObject, which can then be\nused in Haskell programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."pipes-binary" or (errorHandler.buildDepError "pipes-binary"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }