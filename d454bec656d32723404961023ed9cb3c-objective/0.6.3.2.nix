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
        name = "objective";
        version = "0.6.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/objective";
      url = "";
      synopsis = "Extensible objects";
      description = "Stateful effect transducer";
      buildType = "Simple";
    };
    components = {
      "objective" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clean-unions)
          (hsPkgs.elevator)
          (hsPkgs.containers)
          (hsPkgs.minioperational)
          (hsPkgs.profunctors)
          (hsPkgs.witherable)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.either)
          (hsPkgs.adjunctions)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ];
      };
    };
  }