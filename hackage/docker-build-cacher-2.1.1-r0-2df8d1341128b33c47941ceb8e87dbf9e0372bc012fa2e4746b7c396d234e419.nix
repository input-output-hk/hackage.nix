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
        name = "docker-build-cacher";
        version = "2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Seatgeek, Copyright (c) 2017";
      maintainer = "lorenzo@seatgeek.com";
      author = "José Lorenzo Rodríguez";
      homepage = "https://github.com/seatgeek/docker-build-cacher#readme";
      url = "";
      synopsis = "Builds a docker image and caches all of its intermediate stages";
      description = "A CLI tool to speed up multi-stage docker file builds by caching intermediate";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.language-docker)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.turtle)
        ];
      };
      exes = {
        "docker-build-cacher" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.docker-build-cacher)
            (hsPkgs.foldl)
            (hsPkgs.language-docker)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.turtle)
          ];
        };
      };
    };
  }