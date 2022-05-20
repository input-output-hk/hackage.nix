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
    flags = { executable = false; system-pcre = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "skylighting-core"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-2018 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library.\nIt derives its tokenizers from XML syntax\ndefinitions used by KDE's KSyntaxHighlighting\nframework, so any syntax supported by that\nframework can be added. An optional command-line\nprogram is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.\nThis package provides the core highlighting\nfunctionality under a permissive license. It also\nbundles XML parser definitions licensed under the\nGPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ] ++ (if flags.system-pcre
          then [
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            ]
          else [
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            ]);
        buildable = true;
        };
      exes = {
        "skylighting-extract" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            ] ++ (if flags.system-pcre
            then [
              (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
              ]
            else [
              (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
              ]);
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-skylighting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-skylighting" = {
          depends = [
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }