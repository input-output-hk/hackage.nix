{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nomyx-core";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "corentin.dupont@gmail.com";
        author = "Corentin Dupont";
        homepage = "http://www.nomyx.net";
        url = "";
        synopsis = "A Nomic game in haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        nomyx-core = {
          depends  = [
            hsPkgs.nomyx-language
            hsPkgs.nomyx-library
            hsPkgs.imprevu
            hsPkgs.DebugTraceHelpers
            hsPkgs.MissingH
            hsPkgs.acid-state
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.directory
            hsPkgs.either-unwrap
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.hint
            hsPkgs.hscolour
            hsPkgs.ixset
            hsPkgs.mime-mail
            hsPkgs.mtl
            hsPkgs.deepseq
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.safecopy
            hsPkgs.shortcut
            hsPkgs.stm
            hsPkgs.tar
            hsPkgs.temporary
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.yaml
            hsPkgs.NoTrace
            hsPkgs.hslogger
            hsPkgs.hint-server
            hsPkgs.HaskellNet
            hsPkgs.HaskellNet-SSL
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.nomyx-core
              hsPkgs.Cabal
            ];
          };
        };
      };
    }