{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "silently";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Trystan Spangler 2011";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "https://github.com/trystan/silently";
        url = "https://github.com/trystan/silently";
        synopsis = "Prevent or capture writing to stdout and other handles.";
        description = "Prevent or capture writing to stdout and other handles.";
        buildType = "Simple";
      };
      components = {
        silently = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.deepseq
          ];
        };
      };
    }