{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "gsl-random";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://stat.stanford.edu/~patperry/code/gsl-random";
        url = "";
        synopsis = "Bindings the the GSL random number generation facilities.";
        description = "Bindings to the GNU Scientific Library random number generators and random\ndistributions.\n";
        buildType = "Simple";
      };
      components = {
        "gsl-random" = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.gsl pkgs.cblas ];
        };
      };
    }