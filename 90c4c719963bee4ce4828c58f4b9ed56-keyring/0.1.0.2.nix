{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      allbackends = false;
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "keyring";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "(C) 2014 Sebastian Wiesner";
        maintainer = "lunaryorn@gmail.com";
        author = "Sebastian Wiesner";
        homepage = "https://github.com/lunaryorn/haskell-keyring";
        url = "";
        synopsis = "Keyring access";
        description = "keyring provides access to the system's keyring to securely store passwords.\n\nCurrently this library supports the following keyring implementations:\n\n* Keychain on OS X\n\n* KWallet on KDE\n\nThe \"System.Keyring\" module provides the high-level functions 'getPassword'\nand 'setPassword' to easily get and set passwords in the keyring of the\ncurrent user.  The appropriate backend is chosen automatically.";
        buildType = "Simple";
      };
      components = {
        keyring = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optionals system.isOsx [
            hsPkgs.utf8-string
            hsPkgs.bytestring
          ]) ++ pkgs.lib.optional (!system.isOsx || _flags.allbackends) hsPkgs.udbus;
          frameworks = pkgs.lib.optionals system.isOsx [
            pkgs.Security
            pkgs.CoreFoundation
          ];
          build-tools = pkgs.lib.optional system.isOsx hsPkgs.buildPackages.hsc2hs;
        };
        exes = {
          keyring-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.keyring
            ];
          };
        };
      };
    }