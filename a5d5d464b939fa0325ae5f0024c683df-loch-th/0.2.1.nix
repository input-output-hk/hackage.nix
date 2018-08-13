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
        name = "loch-th";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomi@nomi.cz";
      author = "Tomas Janousek";
      homepage = "https://github.com/liskin/loch-th";
      url = "";
      synopsis = "Support for precise error locations in source files (Template Haskell version)";
      description = "This module provides a Template Haskell based mechanism to\ntag failures with the location of the failure call. The\nlocation message includes the file name, line and column\nnumbers.";
      buildType = "Simple";
    };
    components = {
      "loch-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.pretty)
        ];
      };
    };
  }