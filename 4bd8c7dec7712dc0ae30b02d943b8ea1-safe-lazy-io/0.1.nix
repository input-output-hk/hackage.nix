{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safe-lazy-io";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A library providing safe lazy IO features.";
        description = "Provides a safer API for incremental IO processing in a way very\nclose to standard lazy IO.";
        buildType = "Simple";
      };
      components = {
        "safe-lazy-io" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.strict-io
            hsPkgs.extensible-exceptions
          ];
        };
      };
    }