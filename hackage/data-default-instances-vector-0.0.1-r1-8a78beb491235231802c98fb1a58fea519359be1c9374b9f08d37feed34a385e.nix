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
      specVersion = "1.10";
      identifier = {
        name = "data-default-instances-vector";
        version = "0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/data-default-extra";
      url = "";
      synopsis = "Default instances for types defined in vector package";
      description = "Orphan instances for @Default@ type class, which is defined in package\n<https://hackage.haskell.org/package/data-default-class data-default-class>.\n\nFollowing @Default@ instances are provided:\n\n> instance Default (Vector a) where\n>     def = empty\n>\n> -- Storable Vector:\n> instance Storable a => Default (Vector a) where\n>     def = empty\n>\n> -- Unboxed Vector:\n> instance Unbox a => Default (Vector a) where\n>     def = empty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      };
    }