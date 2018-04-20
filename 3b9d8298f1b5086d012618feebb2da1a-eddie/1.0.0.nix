{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "eddie";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Mike Meyer";
        maintainer = "mwm@mired.org";
        author = "Mike Meyer";
        homepage = "http://chiselapp.com/user/mwm/repository/eddie/";
        url = "";
        synopsis = "Command line file filtering with haskell";
        description = "A tool to let you use short haskell expressions to filter\nfiles at the command line.";
        buildType = "Simple";
      };
      components = {
        exes = {
          eddie = {
            depends  = [
              hsPkgs.hint
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.bifunctors
              hsPkgs.safe
              hsPkgs.classy-prelude
            ];
          };
        };
      };
    }