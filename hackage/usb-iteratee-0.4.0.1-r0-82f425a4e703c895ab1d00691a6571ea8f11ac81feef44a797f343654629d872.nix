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
      identifier = { name = "usb-iteratee"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2012 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/usb-iteratee";
      url = "";
      synopsis = "Iteratee enumerators for the usb package";
      description = "This packages provides @iteratee@ enumerators for the @usb@ package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-libusb" or (errorHandler.buildDepError "bindings-libusb"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          ];
        buildable = true;
        };
      };
    }