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
      specVersion = "2.2";
      identifier = { name = "primitive-checked"; version = "0.7.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>, konsumlamm <konsumlamm@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/haskell-primitive/primitive-checked#readme";
      url = "";
      synopsis = "primitive functions with bounds-checking";
      description = "\nThis library is intended to be used as a drop-in replacement for\nthe @primitive@ library in test environments. It adds bounds-checking\nto all functions in @primitive@ that are able to cause segfaults.\nIt is not recommended to use this library in production. However,\nif you are testing a library or application you wrote that uses\n@primitive@, you can temporarily replace your @primitive@ dependency\nwith @primitive-checked@, and your segfaults will become normal\nHaskell exceptions that you can hunt down with GHC's stack trace\nfacilities.\n\nThe versioning for this library matches the version of @primitive@\nthat is targeted. The first three numbers of the version match the\nversion of @primitive@. The fourth number is used for bug fixes.\nThis packages deviates slightly from the PVP in that functions\ncan be added to the API with only a bump to the fourth number.";
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
      };
    }