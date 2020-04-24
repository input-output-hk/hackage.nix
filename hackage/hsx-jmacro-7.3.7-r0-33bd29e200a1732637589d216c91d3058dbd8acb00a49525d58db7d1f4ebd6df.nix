{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsx-jmacro"; version = "7.3.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "hsp+jmacro support";
      description = "HSP allows for the use of literal XML in Haskell program text. JMacro allows for the use of javascript-syntax for generating javascript in Haskell. This library makes it easy to embed JMacro generated javascript in HSX templates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }