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
      specVersion = "1.6";
      identifier = {
        name = "safe-freeze";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope <reiner.pope@gmail.com>";
      homepage = "https://github.com/reinerp/safe-freeze";
      url = "";
      synopsis = "Support for safely freezing multiple arrays in the ST monad.";
      description = "Support for safely freezing multiple arrays in the ST\nmonad. Developed in\n<http://haskell.reinerpope.com/2009/09/making-runstarray-more-flexible-or.html>.\n\nThe new monad is defined in Control.Monad.ST.Freeze. An example\nof its use is given in Data.Vector.Generic.Mutable.STFreeze. The\nmodule Data.STRef.Freeze is a reexports of Data.STRef but lifted\nto the new ST monad.";
      buildType = "Simple";
    };
    components = {
      "safe-freeze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indexed)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
    };
  }