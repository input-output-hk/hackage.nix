{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "ad"; version = "0.12"; };
      license = "BSD-3-Clause";
      copyright = "Edward Kmett 2010";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett 2010";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Mixed-Mode Automatic Differentiation.";
      description = "Forward, reverse, and higher-order automatic differentiation with a common API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }