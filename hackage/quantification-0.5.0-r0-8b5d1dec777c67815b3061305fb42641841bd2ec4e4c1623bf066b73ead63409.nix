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
      specVersion = "2.0";
      identifier = {
        name = "quantification";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
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
          (hsPkgs.binary)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.path-pieces)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }