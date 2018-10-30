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
        name = "spanout";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Viktor Tanyi <tanyi.viktor@gmail.com>";
      author = "Viktor Tanyi";
      homepage = "https://github.com/vtan/spanout";
      url = "";
      synopsis = "A breakout clone written in netwire and gloss";
      description = "A breakout clone written in netwire and gloss.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "spanout" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.MonadRandom)
            (hsPkgs.netwire)
            (hsPkgs.gloss)
          ];
        };
      };
    };
  }