{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "frquotes";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "Lexical extension for Quasi-Quotations using French-Quotes";
      description = "Translate the French-Quotes in a UTF-8 Haskell file into\na Quasi-Quotation that can be instantiated later on.";
      buildType = "Simple";
    };
    components = {
      "frquotes" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "frquotes" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }