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
      specVersion = "3.0";
      identifier = { name = "unicode-data-parser"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2024 (c) Pierre Le Marre";
      maintainer = "dev@wismill.eu";
      author = "Pierre Le Marre";
      homepage = "https://gitlab.com/Wismill/unicode-data-parser";
      url = "";
      synopsis = "Parsers for Unicode Character Database (UCD) files";
      description = "This package provides simple\n[ByteString](https://hackage.haskell.org/package/bytestring/docs/Data-ByteString.html#t:ByteString)\nparsers for the [Unicode character database](https://www.unicode.org/ucd/) (UCD).\n\nSee the [Unicode Standard Annex #44](https://www.unicode.org/reports/tr44/) for further\ndetails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }