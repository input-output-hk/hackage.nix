{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "combinat-diagrams"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Balazs Komuves";
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.colour)
          (hsPkgs.linear)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.combinat)
          ];
        };
      };
    }