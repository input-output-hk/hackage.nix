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
    flags = { semigroupoids = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "semialign"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/haskellari/these";
      url = "";
      synopsis = "Align and Zip type-classes from the common Semialign ancestor.";
      description = "The major use of @These@ of this is provided by the @align@ member of\n@Semialign@ class, representing a generalized notion of \"zipping with padding\"\nthat combines structures without truncating to the size of the smaller input.\n\nIt turns out that @zip@ operation fits well the @Semialign@ class,\nforming lattice-like structure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."indexed-traversable-instances" or (errorHandler.buildDepError "indexed-traversable-instances"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"));
        buildable = true;
      };
    };
  }