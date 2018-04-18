{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "data-accessor-transformers";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Record_access";
        url = "http://code.haskell.org/data-accessor/";
        synopsis = "Use Accessor to access state in transformers State monad";
        description = "Use Accessor to access state in transformers State monad";
        buildType = "Simple";
      };
      components = {
        data-accessor-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.transformers
          ];
        };
      };
    }