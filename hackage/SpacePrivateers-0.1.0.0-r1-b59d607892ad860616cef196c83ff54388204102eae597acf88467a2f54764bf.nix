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
        name = "SpacePrivateers";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tuukka.turto@oktaeder.net";
      author = "Tuukka Turto";
      homepage = "https://github.com/tuturto/space-privateers";
      url = "";
      synopsis = "Simple space pirate roguelike";
      description = "Space Privateers is a roguelike game set in space.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "SpacePrivateers" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.LambdaHack)
            (hsPkgs.containers)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
          ];
        };
      };
    };
  }