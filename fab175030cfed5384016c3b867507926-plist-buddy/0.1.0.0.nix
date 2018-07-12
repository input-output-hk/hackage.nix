{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plist-buddy";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Andy Gill";
        maintainer = "andygill@ku.edu";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Remote monad for editing plists";
        description = "Remote monad wrapper around the plistbuddy shell command for editing plists";
        buildType = "Simple";
      };
      components = {
        "plist-buddy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.posix-pty
            hsPkgs.text
            hsPkgs.time
            hsPkgs.xml
          ];
        };
        tests = {
          "test-plist-buddy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.plist-buddy
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.posix-pty
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }