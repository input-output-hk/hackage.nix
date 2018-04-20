{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cap";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Davie (tom.davie@gmail.com)";
        author = "Thomas Davie";
        homepage = "";
        url = "";
        synopsis = "Interprets and debug the cap language.";
        description = "An interpreter and debugger for the cap language.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cap = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }