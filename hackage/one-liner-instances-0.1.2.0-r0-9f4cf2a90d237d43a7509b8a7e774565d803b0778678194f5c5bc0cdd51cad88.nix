{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "one-liner-instances"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/one-liner-instances#readme";
      url = "";
      synopsis = "Generics-based implementations for common typeclasses";
      description = "Provides generics-based implementations for common typeclasses using\nGenerics.\n\nPlease see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."one-liner" or ((hsPkgs.pkgs-errors).buildDepError "one-liner"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }