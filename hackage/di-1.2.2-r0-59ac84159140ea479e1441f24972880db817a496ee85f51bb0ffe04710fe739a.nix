{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "di"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Typeful hierarchical structured logging using di, mtl and df1.";
      description = "Typeful hierarchical structured logging using di, mtl and df1.\n\nThis is meta-package bringing in together things from:\n\n* [di-core](https://hackage.haskell.org/package/di-core)\n\n* [di-monad](https://hackage.haskell.org/package/di-monad)\n\n* [di-handle](https://hackage.haskell.org/package/di-handle)\n\n* [di-df1](https://hackage.haskell.org/package/di-df1)\n\nSee the \"Di\" module for more documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."df1" or ((hsPkgs.pkgs-errors).buildDepError "df1"))
          (hsPkgs."di-core" or ((hsPkgs.pkgs-errors).buildDepError "di-core"))
          (hsPkgs."di-df1" or ((hsPkgs.pkgs-errors).buildDepError "di-df1"))
          (hsPkgs."di-handle" or ((hsPkgs.pkgs-errors).buildDepError "di-handle"))
          (hsPkgs."di-monad" or ((hsPkgs.pkgs-errors).buildDepError "di-monad"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }