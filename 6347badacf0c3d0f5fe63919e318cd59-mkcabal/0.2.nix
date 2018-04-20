{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mkcabal";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "2005-07, Don Stewart";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/mkcabal";
        url = "";
        synopsis = "Generate cabal files for a Haskell project";
        description = "Generate cabal files for a Haskell project";
        buildType = "Custom";
      };
      components = {
        exes = {
          mkcabal = {
            depends  = [
              hsPkgs.mtl
              hsPkgs.regex-base
              hsPkgs.regex-compat
              hsPkgs.readline
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.pretty
                hsPkgs.old-locale
                hsPkgs.old-time
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }