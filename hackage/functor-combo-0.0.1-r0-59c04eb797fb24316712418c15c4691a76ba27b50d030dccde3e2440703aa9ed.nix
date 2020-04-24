{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "functor-combo"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/functor-combo";
      url = "http://code.haskell.org/~conal/code/functor-combo";
      synopsis = "Functor combinators with tries & zippers";
      description = "Simple functor combinators, their derivatives, and their use for tries\nMaybe split out derivatives and/or tries later.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-inttrie" or ((hsPkgs.pkgs-errors).buildDepError "data-inttrie"))
          ];
        buildable = true;
        };
      };
    }