{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HSH";
          version = "1.2.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2006-2007 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hsh";
        url = "";
        synopsis = "Library to mix shell scripting with Haskell programs";
        description = "HSH is designed to let you mix and match shell expressions with\nHaskell programs. With HSH, it is possible to easily run shell\ncommands, capture their output or provide their input, and pipe them\nto and from other shell commands and arbitrary Haskell functions at will.";
        buildType = "Custom";
      };
      components = {
        HSH = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.MissingH
            hsPkgs.hslogger
            hsPkgs.filepath
            hsPkgs.regex-base
            hsPkgs.regex-posix
          ];
        };
        exes = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.mtl
              hsPkgs.regex-compat
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.filepath
              hsPkgs.regex-base
              hsPkgs.regex-posix
            ];
          };
        };
      };
    }