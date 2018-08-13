{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "diagrams-core";
        version = "1.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Core libraries for diagrams EDSL";
      description = "The core modules underlying diagrams,\nan embedded domain-specific language\nfor compositional, declarative drawing.";
      buildType = "Simple";
    };
    components = {
      "diagrams-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
          (hsPkgs.dual-tree)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          (hsPkgs.profunctors)
          (hsPkgs.mtl)
        ];
      };
    };
  }