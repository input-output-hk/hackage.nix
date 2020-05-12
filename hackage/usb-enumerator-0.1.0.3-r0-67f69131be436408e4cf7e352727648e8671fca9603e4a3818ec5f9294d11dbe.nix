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
      identifier = { name = "usb-enumerator"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Iteratee enumerators for the usb package";
      description = "This packages provides iteratee enumerators for the @usb@ package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-libusb" or (errorHandler.buildDepError "bindings-libusb"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."MonadCatchIO-transformers-foreign" or (errorHandler.buildDepError "MonadCatchIO-transformers-foreign"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          ];
        buildable = true;
        };
      };
    }