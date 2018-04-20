{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "git-date";
          version = "0.2.1";
        };
        license = "GPL-2.0-only";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/git-date-haskell";
        url = "";
        synopsis = "Bindings to the date parsing from Git.";
        description = "This library implements a simple, pure binding onto the date parsing\ncode from git.  Why?  Because it was the only reasonable implementation\nof a generic date parser I could find.";
        buildType = "Simple";
      };
      components = {
        git-date = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.time
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }