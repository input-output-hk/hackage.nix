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
        name = "transformers-free";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Free monad transformers";
      description = "This package is obsolete and all functionality has been merged into the\n@free@ package.\n\nThis library generalizes free monads to free monad transformers.";
      buildType = "Simple";
    };
    components = {
      "transformers-free" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }