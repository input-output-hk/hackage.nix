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
        name = "array";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Mutable and immutable arrays";
      description = "This package defines the classes @IArray@ of immutable arrays and\n@MArray@ of arrays mutable within appropriate monads, as well as\nsome instances of these classes.";
      buildType = "Simple";
    };
    components = {
      "array" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }