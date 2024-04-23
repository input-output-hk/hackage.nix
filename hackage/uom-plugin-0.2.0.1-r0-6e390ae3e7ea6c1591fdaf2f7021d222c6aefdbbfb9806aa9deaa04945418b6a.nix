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
      identifier = { name = "uom-plugin"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016, Adam Gundry";
      maintainer = "Adam Gundry <adam@well-typed.com>";
      author = "Adam Gundry <adam@well-typed.com>";
      homepage = "https://github.com/adamgundry/uom-plugin";
      url = "";
      synopsis = "Units of measure as a GHC typechecker plugin";
      description = "The @uom-plugin@ library adds support for units of measure to GHC\nusing the new experimental facility for typechecker plugins, which\nis available in GHC 7.10 and later.  See\n\"Data.UnitsOfMeasure.Tutorial\" for an introduction to the library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."units-parser" or (errorHandler.buildDepError "units-parser"))
        ];
        buildable = true;
      };
      tests = {
        "test-uom-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uom-plugin" or (errorHandler.buildDepError "uom-plugin"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }