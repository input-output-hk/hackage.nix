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
        name = "collections-base-instances";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeanphilippe.bernardy (google mail)";
      author = "Jean-Philippe Bernardy";
      homepage = "http://code.haskell.org/collections/";
      url = "";
      synopsis = "Useful standard collections types and related functions.";
      description = "This package provides a common API, through a consistent set of classes, to the various standard container types.\nlist, array, set, map, bytestring, etc. are supported.";
      buildType = "Simple";
    };
    components = {
      "collections-base-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.collections-api)
        ];
      };
    };
  }