{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "attempt";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Nicolas Pouillard";
        homepage = "http://github.com/snoyberg/attempt/tree/master";
        url = "";
        synopsis = "Concrete data type for handling extensible exceptions as failures.";
        description = "Defines a data type, Attempt, which has a Success and Failure constructor. Failure contains an extensible exception.";
        buildType = "Simple";
      };
      components = {
        attempt = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.failure
          ];
        };
      };
    }