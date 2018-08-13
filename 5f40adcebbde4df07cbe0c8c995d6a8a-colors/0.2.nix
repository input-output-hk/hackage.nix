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
      specVersion = "1.8";
      identifier = {
        name = "colors";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/colors";
      url = "";
      synopsis = "A type for colors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "colors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
        ];
      };
    };
  }