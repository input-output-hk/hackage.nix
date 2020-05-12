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
      specVersion = "1.8";
      identifier = { name = "dbus-qq"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "";
      url = "";
      synopsis = "Quasi-quoter for DBus functions";
      description = "This package contains a quasi-quoter to automatically convert functions of the form @[Variant] -> [Variant]@ to functions of the actual types, returning a tuple of the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus-qq" or (errorHandler.buildDepError "dbus-qq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }