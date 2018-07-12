{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ord-adhoc";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/ord-adhoc/";
        url = "";
        synopsis = "Creating Ord instances instantly";
        description = "A little extension to Ord";
        buildType = "Simple";
      };
      components = {
        "ord-adhoc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.void
          ];
        };
      };
    }