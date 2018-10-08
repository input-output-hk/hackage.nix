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
        name = "deptrack-core";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/deptrack-project";
      url = "";
      synopsis = "DepTrack Core types and model.";
      description = "Rather than building and maintaing a dependency tree/graph by hand. DepTrack proposes to _track_ dependencies as a side-effect of a computation.";
      buildType = "Simple";
    };
    components = {
      "deptrack-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
        ];
      };
    };
  }