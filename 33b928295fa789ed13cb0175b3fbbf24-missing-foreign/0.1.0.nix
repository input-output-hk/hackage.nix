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
        name = "missing-foreign";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Convenience functions for FFI work";
      description = "Add several functions missing in the standard\nForeign modules:\n\n* copy and move based on Storable\n\n* calloc";
      buildType = "Simple";
    };
    components = {
      "missing-foreign" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }