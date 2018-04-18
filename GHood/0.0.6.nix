{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GHood";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008, Hugo Pacheco\nCopyright (c) 2004, Alcino Cunha\nCopyright (c) 2000, Claus Reinke\nCopyright (c) 1992-2000, Andy Gill";
        maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
        author = "Claus Reinke";
        homepage = "http://www.cs.kent.ac.uk/people/staff/cr3/toolbox/haskell/GHood";
        url = "";
        synopsis = "A graphical viewer for Hood";
        description = "GHood is a graphical back-end for Hood, the front-end (the Haskell interface) is precisely that of Hood. If you have been using Hood already you won't have to change your programs to switch to GHood. If you haven't used Hood before, you can employ all the nice definitions in Hood's Observe library, just as explained in the Hood documentation (see the Hood homepage at <http://www.haskell.org/hood/>).";
        buildType = "Simple";
      };
      components = {
        GHood = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.process
          ];
        };
      };
    }