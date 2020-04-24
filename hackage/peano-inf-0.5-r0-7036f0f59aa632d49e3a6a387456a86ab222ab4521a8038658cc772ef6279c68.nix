{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "peano-inf"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Lazy Peano numbers including observable infinity value.";
      description = "Lazy Peano numbers including observable infinity value.\n\nThis data type was needed in a graph traversing algorithm.\n\nThis data type is ideal for lazy list length computation (the infinite value is not needed in this case).\nFor a comparison with other Peano number implementation, see <http://people.inf.elte.hu/divip/peano/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }