{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-errors";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Danny Navarro <j@dannynavarro.net>";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/pipes-errors";
        url = "";
        synopsis = "Integration between pipes and errors";
        description = "This package is analogous to the\n@<http://hackage.haskell.org/package/errors errors>@ package but for\nbase monad manipulation in the presence of @Proxy@ monad transformers.\n\nIt also provides an orphan @MFunctor@ instance for @ExceptRT@.";
        buildType = "Simple";
      };
      components = {
        pipes-errors = {
          depends  = [
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.pipes
          ];
        };
      };
    }