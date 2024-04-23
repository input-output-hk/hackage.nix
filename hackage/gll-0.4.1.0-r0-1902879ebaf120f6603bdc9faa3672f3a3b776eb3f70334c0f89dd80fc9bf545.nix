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
      specVersion = "1.22";
      identifier = { name = "gll"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2022 L. Thomas van Binsbergen";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface ";
      description = "The package gll provides generalised top-down parsing according to the\n(R)GLL parsing algorithm [Scott and Johnstone 2016].\n\nThe user can either invoke the GLL\nparser directly by importing \"GLL.Parser\" and providing a\nvalue of the Grammar datatype in (exported by \"GLL.Parser\").\nAlternatively, the user can import \"GLL.Combinators\" to write combinator expressions\nfrom which a grammar of the required form is extracted.\nThe combinators enable applying arbitrary semantic actions to parse results.\nThe documentation of the respective packages provides more information.\n\nThe main motivation for this package\nis the development of Domain Specific Languages (DSLs).\nMore specifically: designing DSLs with minimal differences between\nbetween abstract and concrete syntax (abstract syntax is often ambiguous).\n\nPlease email any questions, comments and suggestions to the\nmaintainer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }