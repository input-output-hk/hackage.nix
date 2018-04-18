{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elision";
          version = "0.1.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "2016 Alex Crough";
        maintainer = "alex@crough.io";
        author = "Alex Crough";
        homepage = "http://github.com/crough/elision#readme";
        url = "";
        synopsis = "A data structure over two functions to be linked together at a later time.";
        description = "";
        buildType = "Simple";
      };
      components = {
        elision = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elision
            ];
          };
        };
      };
    }