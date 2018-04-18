{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoid-transformer";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Monoid counterparts to some ubiquitous monad transformers";
        description = "Monoid transformers: State, Reader\n\nThere is no Writer transformer.\nIt's vice versa: The Writer monad transforms a monoid to a monad.";
        buildType = "Simple";
      };
      components = {
        monoid-transformer = {
          depends  = [
            hsPkgs.semigroups
            hsPkgs.base
          ];
        };
      };
    }