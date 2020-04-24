{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "vec-lens"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Vec: length-indexed (sized) list: lens support";
      description = "This package provides [lenses](https://hackage.haskell.org/package/lens) and instances\nfor data types in [vec](https://hackage.haskell.org/package/vec) package.\n\n\"Data.Vec.Lens.Instances\" provides all the instances.\nthe other modules provide some named lenses too.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }