{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "system-fileio";
          version = "0.3.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-filesystem/";
        url = "";
        synopsis = "Consistent filesystem interaction across GHC versions";
        description = "This is a small wrapper around the \\\"directory\\\", \\\"unix\\\", and \\\"Win32\\\"\npackages, for use with \\\"system-filepath\\\". It provides a consistent API\nto the various versions of these packages distributed with different\nversions of GHC.\n\nIn particular, this library supports working with POSIX files that have\npaths which can't be decoded in the current locale encoding.";
        buildType = "Simple";
      };
      components = {
        "system-fileio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.time
          ] ++ (if system.isWindows
            then [
              hsPkgs.Win32
              hsPkgs.directory
            ]
            else [ hsPkgs.unix ]);
        };
      };
    }