{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hoed";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2014 Maarten Faddegon";
        maintainer = "hoed@maartenfaddegon.nl";
        author = "Maarten Faddegon";
        homepage = "http://maartenfaddegon.nl/pub";
        url = "";
        synopsis = "Debug anything without recomping everything!";
        description = "Lighweight debugging based on the observing of intermediate values. How values are observed can be derived with the Generic Deriving Mechanism, or generated with Template Haskell.";
        buildType = "Simple";
      };
      components = {
        Hoed = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.array
          ];
        };
        exes = {
          hoed-examples-SternBrocot = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-examples-GDM-hello = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-examples-TH-hello = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
        };
      };
    }