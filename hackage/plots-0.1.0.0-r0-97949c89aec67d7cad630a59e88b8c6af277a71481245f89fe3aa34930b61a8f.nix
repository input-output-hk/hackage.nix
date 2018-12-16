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
        name = "plots";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "http://github.com/cchalmers/plots";
      url = "";
      synopsis = "Diagrams based plotting library.";
      description = "Diagrams based plotting library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.adjunctions)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.directory)
          (hsPkgs.distributive)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.fingertree)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.monoid-extras)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.statistics)
          (hsPkgs.process)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.profunctors)
          (hsPkgs.JuicyPixels)
          (hsPkgs.intervals)
          (hsPkgs.base-orphans)
        ];
      };
    };
  }