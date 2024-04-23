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
      specVersion = "2.4";
      identifier = { name = "myxine-client"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Galois, Inc.";
      maintainer = "kwf@galois.com";
      author = "Kenny Foner";
      homepage = "https://github.com/GaloisInc/myxine";
      url = "";
      synopsis = "A Haskell client for the Myxine GUI server";
      description = "[Myxine](https://github.com/GaloisInc/myxine) is a language-agnostic local\nserver that lets you build interactive applications in the browser using a\nRESTful API. This package defines high-level typed Haskell bindings for using\nMyxine to quickly prototype surprisingly high-performance GUIs.\n\nMyxine itself runs as a local server, separately from these bindings. It is\nbuilt in [Rust](https://www.rust-lang.org/learn/get-started), and can be\ninstalled using the standard Rust build tool @cargo@:\n\n> $ cargo install myxine\n\nThis Haskell package does __not__ manage the @myxine@ server process; it\nassumes that it is already running in the background (either started by an\nend-user, or managed by your own Haskell application).\n\n__Required extensions:__ This library relies on the __@OverloadedRecordFields@__\nlanguage extension, since a variety of browser event interfaces share field\nnames/types. Without enabling it, you'll see many bewildering errors about\nambiguous names. You may also find useful for concision the extensions\n__@NamedFieldPuns@__ and __@RecordWildCards@__.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."salve" or (errorHandler.buildDepError "salve"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."spoon" or (errorHandler.buildDepError "spoon"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      tests = {
        "myxine-client-test" = {
          depends = [
            (hsPkgs."myxine-client" or (errorHandler.buildDepError "myxine-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }