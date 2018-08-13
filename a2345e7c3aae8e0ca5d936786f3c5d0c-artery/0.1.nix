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
        name = "artery";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/artery";
      url = "";
      synopsis = "A simple, arrow-based reactive programming";
      description = "This package only provides Artery type and associated operations.";
      buildType = "Simple";
    };
    components = {
      "artery" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
        ];
      };
    };
  }