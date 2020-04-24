{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "StateVar"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <svenpanne@gmail.com>";
      author = "Sven Panne";
      homepage = "https://github.com/haskell-opengl/StateVar";
      url = "";
      synopsis = "State variables";
      description = "This package contains state variables, which are references in the IO monad,\nlike IORefs or parts of the OpenGL state.";
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