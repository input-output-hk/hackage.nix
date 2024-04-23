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
      identifier = { name = "xml-extractors"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "holmisen@gmail.com";
      author = "Johan Holmquist";
      homepage = "https://github.com/holmisen/xml-extractors";
      url = "";
      synopsis = "Extension to the xml package to extract data from parsed xml";
      description = "This library provides functions to simplify extraction of data from\ngeneric xml tree structures (as produced by parsing xml with the `xml` package),\nwhile handling location information to provide decent error messages in case\nof errors.\n\n/Some limitations/\n\n* Only handles unqualified names. (This is by design to simplify usage.)\n\n* No column number and sometimes no line number reference in error values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }