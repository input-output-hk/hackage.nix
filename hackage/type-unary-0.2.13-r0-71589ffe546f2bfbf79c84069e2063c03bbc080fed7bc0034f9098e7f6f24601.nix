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
        name = "type-unary";
        version = "0.2.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2014 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/type-unary";
      url = "";
      synopsis = "Type-level and typed unary natural numbers, inequality proofs, vectors";
      description = "Type-level and value-typed unary natural numbers, inequality proofs,\nand length-typed vectors. There are probably many of these packages.\nPerhaps consolidate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ty)
          (hsPkgs.vector-space)
          (hsPkgs.applicative-numbers)
        ];
      };
    };
  }