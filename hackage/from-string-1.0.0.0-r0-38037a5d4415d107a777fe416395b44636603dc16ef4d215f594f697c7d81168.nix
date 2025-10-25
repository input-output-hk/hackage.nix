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
      specVersion = "1.12";
      identifier = { name = "from-string"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2024-2025 XT";
      maintainer = "git@xtendo.org";
      author = "XT";
      homepage = "https://codeberg.org/xt/from";
      url = "";
      synopsis = "Instances of 'From' for common string types";
      description = "Convenient \"sane default\" conversion from/to strict ByteString, lazy\nByteString, ByteString Builder, ShortByteString, strict Text, lazy Text, Text\nBuilder, and String. When the conversions crosses the boundary of the byte\ntypes and the textual types, UTF-8 is assumed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."from" or (errorHandler.buildDepError "from"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "from-string-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."from" or (errorHandler.buildDepError "from"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }