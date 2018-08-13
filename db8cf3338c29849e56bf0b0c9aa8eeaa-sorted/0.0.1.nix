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
        name = "sorted";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "2013 (c) Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "";
      url = "";
      synopsis = "Efficient, type-safe sorted sequences";
      description = "Sorted data types and operations that preserve their sorting.";
      buildType = "Simple";
    };
    components = {
      "sorted" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }