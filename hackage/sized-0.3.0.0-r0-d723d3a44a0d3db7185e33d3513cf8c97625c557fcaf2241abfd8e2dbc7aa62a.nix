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
        name = "sized";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Sized sequence data-types";
      description = "A wrapper to make length-parametrized data-type from ListLike data-types.";
      buildType = "Simple";
    };
    components = {
      "sized" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-natural)
          (hsPkgs.ghc-typelits-presburger)
          (hsPkgs.mono-traversable)
          (hsPkgs.ListLike)
          (hsPkgs.singletons)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.constraints)
          (hsPkgs.equational-reasoning)
          (hsPkgs.lens)
        ];
      };
    };
  }