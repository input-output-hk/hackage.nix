{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "hquantlib"; version = "0.0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://code.google.com/p/hquantlib/";
      url = "";
      synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-special" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-special"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random"))
          ];
        buildable = true;
        };
      };
    }