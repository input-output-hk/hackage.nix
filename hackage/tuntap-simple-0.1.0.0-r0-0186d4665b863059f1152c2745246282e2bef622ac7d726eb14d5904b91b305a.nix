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
      identifier = { name = "tuntap-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "GPL3";
      maintainer = "haskell@riaqn.org";
      author = "Zesen Qian";
      homepage = "https://github.com/riaqn/tuntap-simple#readme";
      url = "";
      synopsis = "A simple tun/tap library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ioctl" or (errorHandler.buildDepError "ioctl"))
          ];
        buildable = true;
        };
      };
    }