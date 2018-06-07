{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cfopu";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "KrabbyKrap@gmail.com";
        author = "Byron James Johnson";
        homepage = "";
        url = "";
        synopsis = "cfopu processor";
        description = "A cfopu processor that can interpret and process cfopu source";
        buildType = "Simple";
      };
      components = {
        exes = {
          cfopu = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.dequeue
              hsPkgs.data-default
            ];
          };
        };
      };
    }