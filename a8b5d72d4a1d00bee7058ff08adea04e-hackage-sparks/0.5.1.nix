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
          name = "hackage-sparks";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Don Stewart (c) 2008-2011";
        maintainer = "dons00@gmail.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/hackage-sparks";
        url = "";
        synopsis = "Generate sparkline graphs of hackage statistics";
        description = "Generate sparkline graphs of hackage statistics";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hackagesparks" = {
            depends  = [
              hsPkgs.hsparklines
              hsPkgs.tagsoup
              hsPkgs.parsedate
              hsPkgs.filepath
              hsPkgs.download
              hsPkgs.bytestring
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.old-locale
                hsPkgs.old-time
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }