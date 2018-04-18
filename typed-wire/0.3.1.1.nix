{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "typed-wire";
          version = "0.3.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015 - 2016 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "http://github.com/typed-wire/typed-wire#readme";
        url = "";
        synopsis = "Language-independent type-safe communication";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        typed-wire = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-types
          ];
        };
        exes = {
          twirec = {
            depends  = [
              hsPkgs.base
              hsPkgs.typed-wire
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.filepath
              hsPkgs.gitrev
              hsPkgs.directory
            ];
          };
        };
        tests = {
          typed-wire-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.typed-wire
              hsPkgs.HTF
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.bytestring
            ];
          };
        };
      };
    }