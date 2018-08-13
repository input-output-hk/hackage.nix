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
        name = "hierarchical-exceptions";
        version = "1.0.1";
      };
      license = "Apache-2.0";
      copyright = "© 2014 Galois, Inc.";
      maintainer = "bbarenblat@galois.com";
      author = "Benjamin Barenblat";
      homepage = "";
      url = "";
      synopsis = "Template Haskell functions to easily create exception\nhierarchies";
      description = "Haskell supports exception hierarchies, but they require quite a bit of\nboilerplate to declare.  This package leverages Template Haskell to automate\ndeclaration of large exception hierarchies.\n\nThis package requires GHC 7.6, as a bug in GHC 7.4 prevents expansion of\nTemplate Haskell splices using 'deriving Typeable'.";
      buildType = "Simple";
    };
    components = {
      "hierarchical-exceptions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }