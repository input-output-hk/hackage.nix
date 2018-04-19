{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal2ebuild";
          version = "0.0.15.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "yet";
        url = "";
        synopsis = "make gentoo's .ebuild file from .cabal file";
        description = "> % ls\n> hoge.cabal ...\n> % cabal2ebuild\n> % ls\n> % hoge.cabal hoge-0.1.2.3.ebuild ...";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal2ebuild = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.Cabal
              hsPkgs.filepath
            ];
          };
        };
      };
    }