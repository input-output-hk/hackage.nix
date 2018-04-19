{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pthread";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2017 EURL Tweag,\n© 2017 LeapYear Technologies.";
        maintainer = "facundo.dominguez@tweag.io";
        author = "Tweag I/O";
        homepage = "http://github.com/tweag/pthread";
        url = "";
        synopsis = "Bindings for the pthread library.";
        description = "";
        buildType = "Simple";
      };
      components = {
        pthread = {
          depends  = [
            hsPkgs.base
            hsPkgs.generic-deriving
          ];
          libs = [ pkgs.pthread ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.pthread
            ];
          };
        };
      };
    }