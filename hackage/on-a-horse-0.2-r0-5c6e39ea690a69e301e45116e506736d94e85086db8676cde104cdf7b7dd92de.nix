{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "on-a-horse";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason@on-a-horse.org";
      author = "Jason Hart Priestley";
      homepage = "http://haskell.on-a-horse.org";
      url = "";
      synopsis = "\"Haskell on a Horse\" - A combinatorial web framework";
      description = "Please read the introduction at on-a-horse.org";
      buildType = "Simple";
    };
    components = {
      "on-a-horse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.hamlet)
          (hsPkgs.hack)
          (hsPkgs.hack-handler-evhttp)
          (hsPkgs.hack-contrib)
          (hsPkgs.containers)
          (hsPkgs.arrows)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.time)
        ];
      };
    };
  }