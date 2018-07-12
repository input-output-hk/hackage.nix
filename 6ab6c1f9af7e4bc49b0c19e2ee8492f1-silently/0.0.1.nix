{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "silently";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Trystan Spangler 2011";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "https://github.com/trystan/silently";
        url = "https://github.com/trystan/silently";
        synopsis = "Prevent writing to stdout in Haskel.";
        description = "Prevent writing to stdout in Haskel.";
        buildType = "Simple";
      };
      components = {
        "silently" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.ghc
          ];
        };
      };
    }