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
    flags = { server = false; xz = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "nova-cache"; version = "0.8.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 Novavero AI Inc.";
      maintainer = "devon.tomlin@novavero.ai";
      author = "Devon Tomlin";
      homepage = "https://github.com/Novavero-AI/nova-cache";
      url = "";
      synopsis = "Pure-first Nix binary cache protocol library";
      description = "A pure-first library implementing the Nix binary cache protocol -\nnix-base32, NAR serialization (whole-tree and streaming), narinfo\nparsing, Ed25519 signing, store path handling, content validation,\nand bounded xz decompression - with an optional WAI server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ] ++ pkgs.lib.optional (flags.xz) (hsPkgs."lzma-static" or (errorHandler.buildDepError "lzma-static"));
        buildable = true;
      };
      exes = {
        "nova-cache-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."nova-cache" or (errorHandler.buildDepError "nova-cache"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if !flags.server then false else true;
        };
      };
      tests = {
        "nova-cache-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."nova-cache" or (errorHandler.buildDepError "nova-cache"))
            (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
          buildable = true;
        };
        "nova-cache-xz-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."nova-cache" or (errorHandler.buildDepError "nova-cache"))
          ];
          buildable = if !flags.xz then false else true;
        };
      };
    };
  }