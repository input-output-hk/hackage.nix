{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      prim-supports-any = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "ghc-heap-view";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Joachim Breitner";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Extract the heap representation of Haskell values and thunks";
      description = "This library provides functions to introspect the Haskell heap, for example\nto investigate sharing and lazy evaluation.\n\nIt has been inspired by (and taken code from) the vacuum package and the GHCi\ndebugger, but also allows to investiage thunks and other closures.\n\nThe work on this package has been supported by the Deutsche Telekom Stiftung\n(<http://telekom-stiftung.de>).";
      buildType = "Simple";
    };
    components = {
      "ghc-heap-view" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
    };
  }