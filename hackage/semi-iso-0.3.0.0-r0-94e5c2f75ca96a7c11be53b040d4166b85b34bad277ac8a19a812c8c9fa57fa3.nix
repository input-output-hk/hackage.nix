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
        name = "semi-iso";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Weakened partial isomorphisms that work with lenses.";
      description = "Semi-isomorphisms are partial isomorphisms with weakened iso laws.\nAnd they work with Iso and Prism from @lens@!\n\nSee first \"Control.Lens.SemiIso\" for semi-isomoprhisms.\nAfter that look at \"Data.SemiIsoFunctor\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          (hsPkgs.lens)
        ];
      };
    };
  }