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
    flags = { useembededlibffi = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hdf5"; version = "1.8.9"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Picca Frédéric-Emmanuel <picca@synchrotron-soleil.fr>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/picca/hs-hdf5";
      url = "";
      synopsis = "Haskell interface to the HDF5 scientific data storage library.";
      description = "This is a low-level but typesafe Haskell interface to the HDF5 library.  No pointers necessary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!flags.useembededlibffi) (hsPkgs."libffi" or (errorHandler.buildDepError "libffi"));
        pkgconfig = [
          (pkgconfPkgs."hdf5-serial" or (errorHandler.pkgConfDepError "hdf5-serial"))
          (pkgconfPkgs."libffi" or (errorHandler.pkgConfDepError "libffi"))
          ];
        buildable = true;
        };
      tests = {
        "hdf5-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."hdf5" or (errorHandler.buildDepError "hdf5"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }