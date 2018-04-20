{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "editpipe";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Brian McKenna";
        maintainer = "brian@brianmckenna.org";
        author = "Brian McKenna";
        homepage = "http://github.com/puffnfresh/editpipe#readme";
        url = "";
        synopsis = "Edit stdin using an editor before sending to stdout.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          editpipe = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.temporary
              hsPkgs.process
              hsPkgs.unix
            ];
          };
        };
      };
    }