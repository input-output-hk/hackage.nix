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
      specVersion = "3.0";
      identifier = { name = "atomic-modify-general"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2023 David Feuer";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "https://github.com/treeowl/atomic-modify-general";
      url = "";
      synopsis = "Generalizations of atomicModifyIORef";
      description = "@base@ provides\n\n@\natomicModifyIORef :: IORef a -> (a -> (a, b)) -> IO b\natomicModifyIORef2 :: IORef a -> (a -> (a, b)) -> IO (a, (a, b))\n@\n\nto modify the value in an @IORef@ and return a result (and, in the\ncase of @atomicModifyIORef2@, also return the old value).\n\nIn \"Data.IORef.AtomicModify\", we generalize this from pairs to arbitrary\ntypes for which the user can provide a function to extract the new\nvalue to store in the @IORef@.\n\nIn \"Data.IORef.AtomicModify.Generic\", we offer a faster but more restricted\nversion taking advantage of the fact that the primop used to implement\n@atomicModifyIORef2@ actually works for /somewhat/ more general record types\nthan @atomicModifyIORef2@ accepts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "atomic-modify-general-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."atomic-modify-general" or (errorHandler.buildDepError "atomic-modify-general"))
            ];
          buildable = true;
          };
        };
      };
    }