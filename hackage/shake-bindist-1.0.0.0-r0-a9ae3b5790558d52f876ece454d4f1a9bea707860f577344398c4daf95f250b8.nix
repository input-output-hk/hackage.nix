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
      specVersion = "2.0";
      identifier = { name = "shake-bindist"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Rules for binary distributions";
      description = "Pack files into a binary distribution";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."lzlib" or (errorHandler.buildDepError "lzlib"))
          (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."archive-sig" or (errorHandler.buildDepError "archive-sig"))
          (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      };
    }