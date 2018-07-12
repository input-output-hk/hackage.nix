{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-tx";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow, 2009";
        maintainer = "Matt Morrow <morrow@moonpatio.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "A transactional state monad.";
        description = ".";
        buildType = "Simple";
      };
      components = {
        "monad-tx" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }