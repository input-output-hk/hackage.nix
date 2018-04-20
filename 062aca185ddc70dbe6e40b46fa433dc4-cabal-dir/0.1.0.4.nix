{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-dir";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "show dist dir of 'cabal copy/install'";
        description = "show dist dir of 'cabal copy/install'\n\n> % cabal configure\n> % cabal-dir\n> prefix : /usr/local/\n> bindir : bin\n> libdir : lib/foo-0.1.2.3/ghc-8.8.8\n> datadir: share/foo-0.1.2.3\n> htmldir: share/doc/foo-0.1.2.3/html";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal-dir = {
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