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
          name = "hackage-plot";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dons00@gmail.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/hackage-plot";
        url = "";
        synopsis = "Generate cumulative graphs of hackage uploads";
        description = "Generate cumulative graphs of hackage uploads";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackage-plot = {
            depends  = [
              hsPkgs.gnuplot
              hsPkgs.download-curl
              hsPkgs.parsedate
              hsPkgs.filepath
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.old-locale
                hsPkgs.old-time
                hsPkgs.directory
                hsPkgs.containers
                hsPkgs.bytestring
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }