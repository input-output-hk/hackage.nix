{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "combinat-diagrams";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Graphical representations for various combinatorial objects";
      description = "Uses the @diagrams@ library to generate graphical\nrepresentations of combinatorial objects from\nthe @combinat@ library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.colour)
          (hsPkgs.vector-space)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.combinat)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }