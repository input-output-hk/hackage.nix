{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shake-persist";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Dmitry Bogatov";
        maintainer = "Dmitry Bogatov <KAction@gnu.org>";
        author = "Dmitry Bogatov";
        homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-shake-persist.git";
        url = "";
        synopsis = "Shake build system on-disk caching";
        description = "Please see Development.Shake.Persist and example in source.";
        buildType = "Simple";
      };
      components = {
        shake-persist = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.binary
            hsPkgs.shake
            hsPkgs.template-haskell
          ];
        };
        exes = {
          ex.shake-persist = {
            depends  = [
              hsPkgs.base
              hsPkgs.shake-persist
              hsPkgs.shake
            ];
          };
        };
      };
    }