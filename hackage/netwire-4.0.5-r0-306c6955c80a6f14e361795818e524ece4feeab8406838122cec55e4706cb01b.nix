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
        name = "netwire";
        version = "4.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Flexible wire arrows for FRP";
      description = "Efficient and flexible wire arrows for functional reactive programming\nand other forms of locally stateful programming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.vector-space)
        ];
      };
    };
  }