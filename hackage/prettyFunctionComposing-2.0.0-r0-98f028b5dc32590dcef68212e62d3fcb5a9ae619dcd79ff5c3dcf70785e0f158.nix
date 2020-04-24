{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "prettyFunctionComposing"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@gmail.com";
      author = "Nick Rudnick";
      homepage = "";
      url = "";
      synopsis = "prettier function composition by (°)";
      description = "Yes, I am afraid it is completely trivial and syntactic.\nHowever, the use of '.' is quite overloaded, so that e.g.\ncharacter search becomes a problem. Pretty looking &\ngenerally available at the keyboard, '°' solves this.\nPossibly the most simple Hackage package ever. :-P";
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