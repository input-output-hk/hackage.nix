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
      identifier = { name = "hidapi"; version = "0.1.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>";
      author = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/chpatrick/haskell-hidapi";
      url = "";
      synopsis = "Haskell bindings to HIDAPI";
      description = "Haskell bindings to the HIDAPI library (<https://github.com/libusb/hidapi>).\n\nNote you need need to have the corresponding low-level\nlibrary installed for your OS, e.g. libudev-dev on Debian/Ubuntu,\nor just udev on distributions that don't split dev libraries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
        ];
        libs = if system.isWindows
          then [ (pkgs."setupapi" or (errorHandler.sysDepError "setupapi")) ]
          else pkgs.lib.optional (!system.isOsx) (pkgs."udev" or (errorHandler.sysDepError "udev"));
        frameworks = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (system.isOsx) (pkgs."AppKit" or (errorHandler.sysDepError "AppKit")));
        buildable = true;
      };
    };
  }