{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "credential-store";
          version = "0.1.2";
        };
        license = "Apache-2.0";
        copyright = "2017 Andrey Sverdlichenko";
        maintainer = "blaze@ruddy.ru";
        author = "Andrey Sverdlichenko";
        homepage = "https://github.com/rblaze/credential-store#readme";
        url = "";
        synopsis = "Library to access secure credential storage providers";
        description = "Cross-platform library for storing secrets.\n\nUses Windows credential store, gnome-keyring or kwallet as backends.";
        buildType = "Simple";
      };
      components = {
        "credential-store" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.safe-exceptions
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.dbus ]);
        };
        exes = {
          "credential-store-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.credential-store
            ];
          };
        };
        tests = {
          "credential-store-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.credential-store
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }