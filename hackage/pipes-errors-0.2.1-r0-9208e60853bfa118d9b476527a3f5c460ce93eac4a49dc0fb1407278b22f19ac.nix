{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-errors";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Danny Navarro <j@dannynavarro.net>";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/pipes-errors";
      url = "";
      synopsis = "Integration between pipes and errors";
      description = "This package is analogous to the\n@<http://hackage.haskell.org/package/errors errors>@ package but for\nbase monad manipulation in the presence of @Proxy@ monad transformers.\n\nIt also provides orphan @MFunctor@ instances for @EitherT@ and\n@EitherRT@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.pipes)
        ];
      };
    };
  }