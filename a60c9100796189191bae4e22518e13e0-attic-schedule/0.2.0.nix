{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attic-schedule";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Pascal Hartig";
        maintainer = "phartig@rdrei.net";
        author = "Pascal Hartig";
        homepage = "http://github.com/passy/attic-schedule#readme";
        url = "";
        synopsis = "A script I use to run \"attic\" for my backups.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          attic-schedule = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.control-bool
              hsPkgs.foldl
              hsPkgs.protolude
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.time
              hsPkgs.turtle
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }