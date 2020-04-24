{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "monadLib"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@csee.ogi.edu";
      author = "Iavor S. Diatchki";
      homepage = "http://www.csee.ogi.edu/~diacthki/monadLib";
      url = "";
      synopsis = "A collection of monad transformers.";
      description = "";
      buildType = "Custom";
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