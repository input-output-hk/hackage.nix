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
      identifier = { name = "hidapi"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>";
      author = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/vahokif/haskell-hidapi";
      url = "";
      synopsis = "Haskell bindings to HIDAPI";
      description = "Haskell bindings to the HIDAPI library (<http://www.signal11.us/oss/hidapi/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
        ];
        libs = if system.isWindows
          then [
            (pkgs."hid" or (errorHandler.sysDepError "hid"))
            (pkgs."setupapi" or (errorHandler.sysDepError "setupapi"))
          ]
          else [ (pkgs."udev" or (errorHandler.sysDepError "udev")) ];
        buildable = true;
      };
    };
  }