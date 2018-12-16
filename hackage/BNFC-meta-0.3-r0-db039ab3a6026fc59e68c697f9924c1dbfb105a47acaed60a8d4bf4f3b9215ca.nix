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
      specVersion = "1.6";
      identifier = {
        name = "BNFC-meta";
        version = "0.3";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Jonas Duregård (jonas.duregard@chalmers.se)";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Deriving Quasi-Quoters from BNF Grammars";
      description = "This package provides a comfortable way of defining quasi-quoters.\nSpecifically, given a quasi-quoted LBNF grammar (as used by the BNF Converter)\nit generates (using Template Haskell) an LALR parser and pretty pretty printer\nfor the language. The parser is then used to define a quasi-quoter. With a simple\npragma, the user can define a universal syntax for anti-quoting. This means that\nany grammar non-terminal can be replaced by a quoted Haskell expression of the\nappropriate type. A few examples are included in the source tarball.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.happy-meta)
          (hsPkgs.alex-meta)
          (hsPkgs.syb)
        ];
      };
    };
  }