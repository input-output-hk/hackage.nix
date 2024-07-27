{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "suitable"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-10 Ganesh Sittampalam";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Abstract over the constraints on the parameters to type constructors";
      description = "This library provides a general purpose typeclass, 'Suitable f a',\nwhich expresses that values of type 'f a' are legal or \"make sense\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
        ];
        buildable = true;
      };
    };
  }