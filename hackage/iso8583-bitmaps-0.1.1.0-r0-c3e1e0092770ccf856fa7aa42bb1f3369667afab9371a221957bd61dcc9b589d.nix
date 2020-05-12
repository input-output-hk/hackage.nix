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
      identifier = { name = "iso8583-bitmaps"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "";
      url = "";
      synopsis = "Parse and merge ISO 8583-style bitmaps";
      description = "This package provides utility methods for writing\nGet and Put methods (in terms of Data.Binary) for parsing and\nmerging ISO 8583-style bitmaps, and also parsing and merging\nmost commonly used field formats (LLVAR/LLLVAR, ASCII numbers\nand so on).\nMoreover, this package provides TH quasiquoter for declarative\nspecification of ISO 8583-based message formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }