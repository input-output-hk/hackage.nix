{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hoist-error"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc";
      maintainer = "sean.chalmers@data61.csiro.au";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "Some convenience facilities for hoisting errors into a monad";
      description = "Provides a typeclass and useful combinators for hoisting errors into a monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          ];
        buildable = true;
        };
      };
    }