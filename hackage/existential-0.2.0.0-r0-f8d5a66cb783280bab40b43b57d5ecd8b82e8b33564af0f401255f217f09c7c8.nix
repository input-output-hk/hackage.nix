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
      specVersion = "1.10";
      identifier = {
        name = "existential";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Existential types with lens-like accessors.";
      description = "Existential types encapsulated in Cell type together with some lens-like accessors. A template-haskell-based factory generator is also provided to use TypeRep to reconstruct Cell objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.unordered-containers)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
          (hsPkgs.constraints)
          (hsPkgs.serialize-instances)
          (hsPkgs.th-printf)
          (hsPkgs.quickcheck-report)
          (hsPkgs.portable-template-haskell-lens)
          (hsPkgs.control-invariants)
        ];
      };
    };
  }