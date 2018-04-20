{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "attempt";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/attempt/tree/master";
        url = "";
        synopsis = "Error handling using extensible exceptions outside the IO monad.";
        description = "Defines a data type, Attempt, which has a Success and Failure constructor. Failure contains an extensible exception.";
        buildType = "Simple";
      };
      components = {
        attempt = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.transformers
          ];
        };
      };
    }