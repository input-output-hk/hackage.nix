{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "Adaptive"; version = "0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "dustin.deweese@gmail.com";
      author = "Dustin DeWeese";
      homepage = "http://github.com/HackerFoo/Adaptive";
      url = "";
      synopsis = "Adaptive precision floating-point arithmetic";
      description = "Lazy arithmetic computed with as much precision as demanded";
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