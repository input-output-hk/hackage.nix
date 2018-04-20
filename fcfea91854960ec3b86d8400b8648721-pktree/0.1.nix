{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pktree";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2011 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/pktree-haskell";
        url = "";
        synopsis = "Implementation of the PKTree spatial index data structure";
        description = "This project aims to implement the great spatial index data structure, the PK tree, in Haskell.  The data structure is covered in the following papers, but the code is much easier to read than they are:\n\n<http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.21.411>\n<http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.21.883>\n<http://www.cs.umd.edu/~hjs/pubs/TR-4523.pdf>";
        buildType = "Simple";
      };
      components = {
        pktree = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }