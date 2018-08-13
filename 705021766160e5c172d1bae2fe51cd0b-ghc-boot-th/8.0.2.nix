{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-boot-th";
        version = "8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghc-devs@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Shared functionality between GHC and the @template-haskell@\nlibrary";
      description = "This library contains various bits shared between the @ghc@ and\n@template-haskell@ libraries.\n\nThis package exists to ensure that @template-haskell@ has a\nminimal set of transitive dependencies, since it is intended to\nbe depended upon by user code.";
      buildType = "Simple";
    };
    components = {
      "ghc-boot-th" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }