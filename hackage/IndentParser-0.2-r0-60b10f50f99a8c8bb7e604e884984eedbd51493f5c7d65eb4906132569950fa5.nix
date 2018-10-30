{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "IndentParser";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "login:ppk host:cse dot iitk dot ac dot in";
      author = "Piyush P Kurur";
      homepage = "http://www.cse.iitk.ac.in/~ppk";
      url = "";
      synopsis = "Combinators for parsing indentation based syntatic structures";
      description = "This package exposes two modules,\n'Text.ParserCombinators.Parsec.IndentParser' and\n'Text.ParserCombinators.Parsec.IndentToken', for constructing parser\ncombinators for indentation based syntactic structures. The former\nexports the basic indentation parser combinators and\nthe later together with 'Text.ParserCombinators.Parsec.Language' and\n'Text.ParserCombinators.Parsec.Token' can be used to define tokenisers\nfor programming languages.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }