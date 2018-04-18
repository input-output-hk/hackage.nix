{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      lifted = false;
      build-examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shelly";
          version = "1.6.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Weber <greg@gregweber.info>";
        author = "Greg Weber, Petr Rockai";
        homepage = "https://github.com/yesodweb/Shelly.hs";
        url = "";
        synopsis = "shell-like (systems) programming in Haskell";
        description = "Shelly provides convenient systems programming in Haskell,\nsimilar in spirit to POSIX shells. Shelly:\n\n* is aimed at convenience and getting things done rather than\nbeing a demonstration of elegance.\n\n* has detailed and useful error messages\n\n* maintains its own environment, making it thread-safe.\n\n* is modern, using Text and system-filepath/system-fileio\n\nShelly is originally forked from the Shellish package.\n\nSee the shelly-extra package for additional functionality.\n\nAn overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        shelly = {
          depends  = [
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.unix-compat
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.lifted-async
            hsPkgs.exceptions
            hsPkgs.enclosed-exceptions
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.async
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          drain = {
            depends  = optionals _flags.build-examples [
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          run-handles = {
            depends  = optionals _flags.build-examples [
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          Color = {
            depends  = optionals _flags.build-examples [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
        tests = {
          shelly-testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.unix-compat
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.lifted-base
              hsPkgs.lifted-async
              hsPkgs.enclosed-exceptions
              hsPkgs.exceptions
            ];
          };
        };
      };
    }