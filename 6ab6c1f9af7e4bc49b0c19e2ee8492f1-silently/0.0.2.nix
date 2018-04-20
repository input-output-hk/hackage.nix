{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "silently";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Trystan Spangler 2011";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "https://github.com/trystan/silently";
        url = "https://github.com/trystan/silently";
        synopsis = "Prevent or capture writing to stdout.";
        description = "Prevent or capture writing to stdout, or any given handle.";
        buildType = "Simple";
      };
      components = {
        silently = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.ghc
          ];
        };
      };
    }