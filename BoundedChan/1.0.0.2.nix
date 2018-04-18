{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "BoundedChan";
          version = "1.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@galois.com>";
        author = "Adam Wick <awick@galois.com>";
        homepage = "";
        url = "";
        synopsis = "Implementation of bounded channels.";
        description = "This library introduces BoundedChan. BoundedChans differ from\nChans in that they are guaranteed to contain no more than a\ncertain number of elements.";
        buildType = "Simple";
      };
      components = {
        BoundedChan = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }