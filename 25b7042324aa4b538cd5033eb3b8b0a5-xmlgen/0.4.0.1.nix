{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      benchmarks = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xmlgen";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stefan Wehr <wehr@factisresearch.com>";
        author = "Stefan Wehr, Stefan Schmidt, Johannes Weiss, David Leuschner";
        homepage = "";
        url = "";
        synopsis = "Fast XML generation library";
        description = "Library for high-performance XML generation.";
        buildType = "Simple";
      };
      components = {
        xmlgen = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.monads-tf
            hsPkgs.text
            hsPkgs.xml-types
          ];
        };
        exes = {
          tests = {
            depends  = pkgs.lib.optionals _flags.tests [
              hsPkgs.HTF
              hsPkgs.MissingH
              hsPkgs.hxt
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.process
            ];
          };
          benchmarks = {
            depends  = pkgs.lib.optional _flags.benchmarks hsPkgs.criterion;
          };
        };
      };
    }