{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabin";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nick@topos.org.uk";
        author = "Nicholas Clarke";
        homepage = "";
        url = "";
        synopsis = "Cabal binary sandboxes.";
        description = "A simple package manager for cabal binary packages. Each\nbinary package is installed to a separate sandbox and can\nbe loaded into the users profile individually.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabin = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.optparse-applicative
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.unix
            ];
          };
        };
      };
    }