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
        name = "quantification";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/quantification#readme";
      url = "";
      synopsis = "Rage against the quantification";
      description = "Data types and typeclasses to deal with universally and existentially quantified types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.path-pieces)
          (hsPkgs.vector)
        ];
      };
    };
  }