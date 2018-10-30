{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "objective";
        version = "0.6.5";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.elevator)
          (hsPkgs.extensible)
          (hsPkgs.containers)
          (hsPkgs.minioperational)
          (hsPkgs.profunctors)
          (hsPkgs.witherable)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.either)
          (hsPkgs.void)
          (hsPkgs.adjunctions)
          (hsPkgs.transformers)
        ];
      };
    };
  }