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
      specVersion = "1.2.3";
      identifier = {
        name = "type-level-natural-number-induction";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "High-level combinators for performing inductive operations.";
      description = "This package provides high-level combinators for working\nwith inductive structures --- that is, structures tagged\nwith a phantom type-level natural number.  Combinators\nare provided for building up a structure from seed data\nusing induction, tearing down a structure to obtain a\nresult, and inductively transforming one structure into\nanother with the same size.\n\nThis package uses the type-level-natural-number package for\nits type-level representations of the natural numbers.  The\nonly non-Haskell 2010 extension it needs is Rank2Types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.type-level-natural-number)
        ];
      };
    };
  }