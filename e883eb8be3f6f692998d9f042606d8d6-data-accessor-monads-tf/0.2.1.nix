{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-accessor-monads-tf";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
        author = "Stephan Friedrichs";
        homepage = "http://www.haskell.org/haskellwiki/Record_access";
        url = "http://code.haskell.org/data-accessor/";
        synopsis = "Use Accessor to access state in monads-tf State monad type family";
        description = "Use Accessor to access state in monads-tf State monad type family";
        buildType = "Simple";
      };
      components = {
        "data-accessor-monads-tf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }