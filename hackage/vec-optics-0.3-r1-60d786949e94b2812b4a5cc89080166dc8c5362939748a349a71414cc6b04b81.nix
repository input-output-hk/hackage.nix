{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "vec-optics"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Vec: length-indexed (sized) list: optics support";
      description = "This package provides [optics](https://hackage.haskell.org/package/optics) and instances\nfor data types in [vec](https://hackage.haskell.org/package/vec) package.\n\n\"Data.Vec.Optics.Instances\" provides all the instances.\nthe other modules provide some named optics too.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
          (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
          ];
        buildable = true;
        };
      };
    }