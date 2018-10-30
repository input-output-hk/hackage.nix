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
        name = "hero-club-five-tenets";
        version = "0.3.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2016, I amd D";
      maintainer = "d.kupanhy@gmail.com";
      author = "I am D.";
      homepage = "https://github.com/i-amd3/hero-club-five-tenets";
      url = "";
      synopsis = "Think back of the five tenets of hero club";
      description = "This package gives you Hero Club Five Tenets, Yuki Yuna is a Hero.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.random)
        ];
      };
      exes = {
        "fivetenets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.random)
            (hsPkgs.hero-club-five-tenets)
          ];
        };
      };
    };
  }