{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-operators"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Benedict Aas";
      maintainer = "x@shou.io";
      author = "Benedict Aas";
      homepage = "https://github.com/Shou/type-operators#readme";
      url = "";
      synopsis = "Various type-level operators";
      description = "A set of type-level operators meant to be helpful and make typing less of a\nchore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }