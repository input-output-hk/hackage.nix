{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "entropy";
          version = "0.2.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "https://github.com/TomMD/entropy";
        url = "";
        synopsis = "A platform independent entropy source";
        description = "A platform independent method to obtain cryptographically strong entropy\n(urandom on Linux, CryptAPI on Windows, patches welcome).\nUsers looking for cryptographically strong (number-theoretically\nsound) PRNGs should see the 'DRBG' package too!";
        buildType = "Custom";
      };
      components = {
        entropy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          libs = pkgs.lib.optional system.isWindows pkgs.advapi32;
        };
      };
    }