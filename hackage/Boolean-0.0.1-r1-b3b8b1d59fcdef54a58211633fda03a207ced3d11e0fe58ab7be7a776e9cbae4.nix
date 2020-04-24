{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Boolean"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://code.haskell.org/~conal/code/Boolean";
      synopsis = "Generalized booleans";
      description = "Some classes for generalized boolean operations.\n\nCopyright 2009 Conal Elliott; BSD3 license.";
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