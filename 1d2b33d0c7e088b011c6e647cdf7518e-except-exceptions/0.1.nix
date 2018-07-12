{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "except-exceptions";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tim Humphries <tim@utf8.me>";
        author = "Tim Humphries";
        homepage = "https://github.com/thumphries/except-exceptions";
        url = "";
        synopsis = "Safely deal with exceptions in ExceptT";
        description = "Exception-related functions for @ExceptT@.\n\nAs of @exceptions-0.9.0@, @ExceptT@ has a valid and sensible\n@MonadMask@ instance. If available, this package simply re-exports the\nrelevant functions from @exceptions@.";
        buildType = "Simple";
      };
      components = {
        "except-exceptions" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.transformers
          ];
        };
      };
    }