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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "libfuse3"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yohashi <yohashi1991@gmail.com>";
      author = "yohashi";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding for libfuse-3.x";
      description = "Bindings for libfuse, the FUSE userspace reference implementation, of version 3.x. Compatible with Linux.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        pkgconfig = [
          (pkgconfPkgs."fuse3" or (errorHandler.pkgConfDepError "fuse3"))
        ];
        buildable = true;
      };
      exes = {
        "null" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."libfuse3" or (errorHandler.buildDepError "libfuse3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if flags.examples then true else false;
        };
        "passthrough" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."libfuse3" or (errorHandler.buildDepError "libfuse3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."linux-xattr" or (errorHandler.buildDepError "linux-xattr"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if flags.examples then true else false;
        };
        "statjson" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."libfuse3" or (errorHandler.buildDepError "libfuse3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }