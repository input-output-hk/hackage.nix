{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "precis";
          version = "0.4.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Diff Cabal packages.";
        description = "Summarize API differences between revisions of Cabal packages.\n\nNote Precis library is BSD3, Precis executable is LGPL apropos\nthe dependency on CppHs.\n\nCHANGES\n\n0.3.1 to 0.4.0\n\n* Substantial changes to reporting - now a summary is printed\nto the console, and an HTML report can be generated via a\ncommand line flag.\n\n* Changed constructor names for Edit data type\n";
        buildType = "Simple";
      };
      components = {
        "precis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Cabal
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.haskell-src-exts
            hsPkgs.cpphs
            hsPkgs.xhtml
          ];
        };
        exes = { "precis" = {}; };
      };
    }