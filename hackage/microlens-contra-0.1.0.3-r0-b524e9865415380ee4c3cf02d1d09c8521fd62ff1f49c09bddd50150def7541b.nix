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
      identifier = { name = "microlens-contra"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Steven Fontanella <steven.fontanella@gmail.com>";
      author = "Edward Kmett, Artyom Kazak";
      homepage = "http://github.com/monadfix/microlens";
      url = "";
      synopsis = "True folds and getters for microlens";
      description = "This package provides @Fold@ and @Getter@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).\n\nThe difference between @Fold@ and @SimpleFold@ is that you can use e.g. @takingWhile@\\/@droppingWhile@ and @backwards@ on the former but not on the latter. Most functions from lens that work with @Fold@ would work with @SimpleFold@ as well, though.\n\nStarting from GHC 8.6, this package doesn't depend on contravariant anymore.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.6") (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"));
        buildable = true;
      };
    };
  }