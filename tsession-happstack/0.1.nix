{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tsession-happstack";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Florian Micheler";
        maintainer = "Florian Micheler <hackage@micheler.net>";
        author = "Florian Micheler <hackage@micheler.net>";
        homepage = "";
        url = "";
        synopsis = "A Transaction Framework for Happstack";
        description = "This is the integration of tsession to Happstack\n\nFor more information check my master thesis:\n\n<http://stud.micheler.net/master.pdf>";
        buildType = "Simple";
      };
      components = {
        tsession-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.happstack-server
            hsPkgs.tsession
          ];
        };
      };
    }