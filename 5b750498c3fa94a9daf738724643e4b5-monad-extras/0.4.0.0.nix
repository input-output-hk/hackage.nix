{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-extras";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@fpcomplete.com";
        author = "John Wiegley, Chris Done";
        homepage = "http://github.com/jwiegley/monad-extras";
        url = "";
        synopsis = "Extra utility functions for working with monads";
        description = "";
        buildType = "Simple";
      };
      components = {
        monad-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }