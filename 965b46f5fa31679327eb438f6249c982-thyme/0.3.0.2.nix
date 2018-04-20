{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bug-for-bug = true;
      hlint = false;
      show-internal = false;
      werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "thyme";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013 Liyang HU";
        maintainer = "thyme@liyang.hu";
        author = "Liyang HU, Ashley Yakeley";
        homepage = "https://github.com/liyang/thyme";
        url = "";
        synopsis = "A faster time library";
        description = "Thyme is a rewrite of the fine @time@ library, with a particular focus\non performance for applications that make heavy use of timestamps.\n\nSee \"Data.Thyme\" for a full description.";
        buildType = "Simple";
      };
      components = {
        thyme = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.vector-space
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          sanity = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.thyme
              hsPkgs.time
              hsPkgs.vector-space
            ];
          };
          rewrite = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.system-posix-redirect
              hsPkgs.text
              hsPkgs.thyme
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals _flags.hlint [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.random
              hsPkgs.thyme
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector-space
            ];
          };
        };
      };
    }