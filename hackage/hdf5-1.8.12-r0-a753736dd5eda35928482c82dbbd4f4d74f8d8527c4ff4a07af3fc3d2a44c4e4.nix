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
    flags = { use-hdf5-serial = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hdf5"; version = "1.8.12"; };
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
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."libffi" or (errorHandler.buildDepError "libffi"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = if flags.use-hdf5-serial
          then [
            (pkgconfPkgs."hdf5-serial" or (errorHandler.pkgConfDepError "hdf5-serial"))
          ]
          else [
            (pkgconfPkgs."hdf5" or (errorHandler.pkgConfDepError "hdf5"))
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