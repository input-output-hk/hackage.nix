{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "indexed";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Reiner Pope,\nCopyright (C) 2008 Edward A. Kmett,\nCopyright (C) 2004--2008 Dave Menendez,\nCopyright (C) 2007 Iavor Diatchki";
        maintainer = "Reiner Pope <reiner.pope@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "https://github.com/reinerp/indexed";
        url = "";
        synopsis = "Haskell98 indexed functors, monads, comonads";
        description = "Haskell98 indexed functors, monads, comonads";
        buildType = "Simple";
      };
      components = {
        "indexed" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }