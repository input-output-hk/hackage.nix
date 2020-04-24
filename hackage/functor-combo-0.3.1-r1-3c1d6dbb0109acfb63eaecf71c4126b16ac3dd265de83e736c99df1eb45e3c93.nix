{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "functor-combo"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "";
      synopsis = "Functor combinators with tries & zippers";
      description = "Simple functor combinators, their derivatives, and their use for tries\nMaybe split out derivatives and/or tries later.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-inttrie" or ((hsPkgs.pkgs-errors).buildDepError "data-inttrie"))
          (hsPkgs."lub" or ((hsPkgs.pkgs-errors).buildDepError "lub"))
          (hsPkgs."type-unary" or ((hsPkgs.pkgs-errors).buildDepError "type-unary"))
          ];
        buildable = true;
        };
      };
    }