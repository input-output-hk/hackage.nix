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
      identifier = { name = "machines-zlib"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 LShift";
      maintainer = "";
      author = "Robin Green";
      homepage = "https://github.com/lshift/machines-zlib";
      url = "";
      synopsis = "Decompression support for machines";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          ];
        buildable = true;
        };
      };
    }