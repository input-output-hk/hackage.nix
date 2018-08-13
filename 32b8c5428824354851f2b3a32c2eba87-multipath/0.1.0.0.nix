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
        name = "multipath";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "flegmer@gmail.com";
      author = "Jan Rydzewski";
      homepage = "https://github.com/SupraSummus/haskell-multipath";
      url = "";
      synopsis = "Parser and builder for unix-path-like objects.";
      description = "Parser and builder for unix-path-like objects used in multiformats (https://github.com/multiformats)";
      buildType = "Simple";
    };
    components = {
      "multipath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.parsec)
        ];
      };
    };
  }