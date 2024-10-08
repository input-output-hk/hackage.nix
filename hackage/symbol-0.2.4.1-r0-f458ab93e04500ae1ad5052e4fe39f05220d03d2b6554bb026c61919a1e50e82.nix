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
      identifier = { name = "symbol"; version = "0.2.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2024 Geoffrey Mainland";
      maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
      author = "Geoffrey Mainland <mainland@drexel.edu>";
      homepage = "https://github.com/mainland/symbol";
      url = "";
      synopsis = "A 'Symbol' type for fast symbol comparison.";
      description = "Provides a 'Symbol' data type allowing fast symbol comparisons\nand functions for interning symbols and recovering their\n'String' representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }