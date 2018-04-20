{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "NanoProlog";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jurriën Stutterheim";
        author = "Doaitse Swierstra, Jurriën Stutterheim";
        homepage = "";
        url = "";
        synopsis = "Very small  interpreter for a Prolog-like language";
        description = "This package was developed to demonstrate the ideas behind\nthe Prolog language. It contains a very small interpreter\n(@Language.Prolog.Nanoprolog@) which can be run on its\nown. It reads a file with definitions, and then prompts\nfor a goal. All possibe solutions are printed, preceded by\na tree showing which rules were applied in which order.";
        buildType = "Simple";
      };
      components = {
        NanoProlog = {
          depends  = [
            hsPkgs.base
            hsPkgs.uu-parsinglib
            hsPkgs.ListLike
            hsPkgs.containers
          ];
        };
        exes = {
          nano-prolog = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }