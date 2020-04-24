{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "total-map"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://github.com/conal/total-map/";
      url = "";
      synopsis = "Finitely represented /total/ maps";
      description = "Finitely represented /total/ maps. Represented by as a partial map and\na default value. Has Applicative and Monad instances (unlike Data.Map).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semiring-num" or ((hsPkgs.pkgs-errors).buildDepError "semiring-num"))
          ];
        buildable = true;
        };
      };
    }