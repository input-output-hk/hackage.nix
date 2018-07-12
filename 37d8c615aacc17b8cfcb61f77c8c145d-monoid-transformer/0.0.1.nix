{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoid-transformer";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Monoid counterparts to some ubiquitous monad transformers";
        description = "Monoid transformers: State, Reader\nThere is no Writer transformer.\nIt's vice versa: The Writer monad transforms a monoid to a monad.";
        buildType = "Simple";
      };
      components = {
        "monoid-transformer" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }