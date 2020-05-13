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
      specVersion = "1.18";
      identifier = { name = "libarchive"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to libarchive";
      description = "Haskell bindings for [libarchive](https://www.libarchive.org/). Provides the ability to unpack archives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libarchive" or (errorHandler.pkgConfDepError "libarchive"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }