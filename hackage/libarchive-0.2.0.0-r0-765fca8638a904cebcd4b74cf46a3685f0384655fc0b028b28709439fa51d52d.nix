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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "libarchive"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libarchive";
      description = "Partial Haskell bindings for [libarchive](https://www.libarchive.org/). Provides the ability to unpack tar archives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libarchive" or (errorHandler.pkgConfDepError "libarchive"))
          ];
        buildable = true;
        };
      };
    }