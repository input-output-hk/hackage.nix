{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "type-natural";
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013-2014";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/type-natural";
      url = "";
      synopsis = "Type-level natural and proofs of their properties.";
      description = "Type-level natural numbers and proofs of their properties.\n\nVersion 0.6+ supports __GHC 8+ only__.\n\n__Use 0.5.* with ~ GHC 7.10.3__.";
      buildType = "Simple";
    };
    components = {
      "type-natural" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.equational-reasoning)
          (hsPkgs.monomorphic)
          (hsPkgs.template-haskell)
          (hsPkgs.constraints)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.ghc-typelits-presburger)
          (hsPkgs.singletons)
        ];
      };
    };
  }