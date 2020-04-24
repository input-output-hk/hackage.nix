{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gll"; version = "0.3.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface";
      description = "The package gll provides generalised top-down parsing according to the GLL\nparsing algorithm [Scott and Johnstone 2010,2013].\n\nThe user can either invoke the GLL\nparser directly by importing \"GLL.Parser\" and providing a\nvalue of the Grammar datatype in (exported by \"GLL.Parser\").\nAlternatively, the user can import \"GLL.Combinators\" to write combinator expressions\nfrom which a grammar of the required form is extracted.\nThe combinators enable applying arbitrary semantic actions to parse results.\nThe documentation of the respective packages provides more information.\n\nThe main motivation for this package\nis the development of Domain Specific Languages (DSLs).\nMore specifically: designing DSLs with minimal differences between\nbetween abstract and concrete syntax (abstract syntax is often ambiguous).\n\nPlease email any questions, comments and suggestions to the\nmaintainer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          ];
        buildable = true;
        };
      };
    }