{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "passman-core";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2017 Matthew Harm Bekkema";
        maintainer = "mbekkema97@gmail.com";
        author = "Matthew Harm Bekkema";
        homepage = "https://github.com/PasswordManager/passman-core#readme";
        url = "";
        synopsis = "Deterministic password generator core";
        description = "Generates unique passwords deterministically from a single master password.\nA hash of the master password is stored on disk to prevent accidentally\ngenerating a password from a mistyped master password.\n\nThis is the core of passman.";
        buildType = "Simple";
      };
      components = {
        passman-core = {
          depends  = [
            hsPkgs.passman-core-internal
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bcrypt
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptohash-md5
            hsPkgs.csv-conduit
            hsPkgs.data-ordlist
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.int-cast
            hsPkgs.memory
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.unix-compat
            hsPkgs.yaml
          ];
        };
        sublibs = {
          passman-core-internal = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.int-cast
            ];
          };
        };
        tests = {
          precomputed = {
            depends  = [
              hsPkgs.base
              hsPkgs.passman-core
              hsPkgs.conduit
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.passman-core
              hsPkgs.passman-core-internal
              hsPkgs.conduit
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.async
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-unicode
              hsPkgs.template-haskell
              hsPkgs.temporary
            ];
          };
        };
      };
    }