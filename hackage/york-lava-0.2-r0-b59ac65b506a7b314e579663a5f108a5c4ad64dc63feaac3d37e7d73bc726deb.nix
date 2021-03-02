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
      specVersion = "1.0";
      identifier = { name = "york-lava"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Naylor <mfn@cs.york.ac.uk>";
      author = "Matthew Naylor";
      homepage = "http://www.cs.york.ac.uk/fp/reduceron/";
      url = "";
      synopsis = "A library for digital circuit description.";
      description = "York Lava is library for describing digital circuits. Descriptions\ncan be simulated in Hugs or GHC, and converted to VHDL compatible with\nXST, the Xilinx Synthesis Tool.  It is similar to Chalmers\nLava, but omits some features and offers a few new ones.\nSee the top-level module \"Lava\" for pointers to futher information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }