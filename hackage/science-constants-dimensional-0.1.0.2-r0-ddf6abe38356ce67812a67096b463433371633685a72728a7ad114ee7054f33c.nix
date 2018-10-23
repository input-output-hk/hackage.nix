{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "science-constants-dimensional";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Vorontsov <anton@enomsg.org>";
      author = "Anton Vorontsov <anton@enomsg.org>";
      homepage = "";
      url = "";
      synopsis = "Mathematical/physical/chemical constants";
      description = "\"Science.Constants.Dimensional\" is a variant of \"Science.Constants\"[1]\npackage, with the only difference is that that the dimensional flavor\nprovides (where applicable) dimensionally-typed constants. The\n\"Numeric.Units.Dimensional\"[2] wrappers allow to write type-safe\nformulas, for example all of this will successfully type-check:\n\n> ~\$ ghci -XNoImplicitPrelude\n> λ= import Numeric.Units.Dimensional.Prelude\n>\n> λ= import Science.Constants.Dimensional\n>\n> λ= massOfProton + massOfElectron\n>\n> 1.673532715291e-27 kg\n> λ= massOfProton / massOfElectron\n>\n> 1836.1526719486646\n\nBut this will not:\n\n> λ= massOfProton / massOfElectron + planckConstant\n>\n> <interactive>:10:14:\n>     Couldn't match type `Numeric.NumType.Pos\n>                            (Numeric.NumType.Pos Numeric.NumType.Zero)'\n>                   with `Numeric.NumType.Zero'\n\n[1] <https://hackage.haskell.org/package/science-constants>\n\n[2] <https://hackage.haskell.org/package/dimensional>";
      buildType = "Simple";
    };
    components = {
      "science-constants-dimensional" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.science-constants)
          (hsPkgs.numtype)
          (hsPkgs.dimensional)
        ];
      };
    };
  }