{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "data-hash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "";
      homepage = "http://code.haskell.org/~jcpetruzza/data-hash";
      url = "";
      synopsis = "Combinators for building fast hashing functions.";
      description = "Combinators for building fast hashing functions. Includes\nhashing functions for all basic Haskell98 types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }