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
      identifier = { name = "tie-knot"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2012 Petr Pudlák";
      maintainer = "Petr Pudlák <petr.mvd@gmail.com>";
      author = "Petr Pudlák";
      homepage = "https://github.com/ppetr/tie-knot";
      url = "";
      synopsis = "\"Ties the knot\" on a given set of structures that reference each other by\nkeys.";
      description = "\"Ties the knot\" on a given set of structures that reference each other by\nkeys - replaces the keys with their respective values. Takes @Map k (v k)@\nand converts into @Map k v'@ where @v'@ is the fixed point of @v@. See the\nhomepage for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }