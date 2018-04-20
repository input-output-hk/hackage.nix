{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dist-upload";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Generate/Upload cabal package to Hackage.";
        description = "Generate/Upload cabal package to Hackage.\n\nBest put your hackage username/password in file `HOME/.cabal/config`, then \"dist-upload\" can upload package fully automatic. :)";
        buildType = "Simple";
      };
      components = {
        dist-upload = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.Cabal
          ];
        };
        exes = { dist-upload = {}; };
      };
    }