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
    flags = { bootstrap = false; executable = false; system-pcre = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "skylighting"; version = "0.5.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library with\nsupport for over one hundred languages.  It derives\nits tokenizers from XML syntax definitions used\nby KDE's KSyntaxHighlighting framework, so any\nsyntax supported by that framework can be added.\nAn optional command-line program is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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
        ] ++ (if flags.system-pcre
          then [
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          ]
          else [
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          ]);
        buildable = if flags.bootstrap then false else true;
      };
      exes = {
        "skylighting-extract" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
          ] ++ (if flags.system-pcre
            then [
              (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            ]
            else [
              (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            ]);
          buildable = if flags.bootstrap then true else false;
        };
        "skylighting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          ];
          buildable = (if flags.bootstrap
            then false
            else true) && (if flags.executable then true else false);
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
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          ];
          buildable = if flags.bootstrap then false else true;
        };
      };
      benchmarks = {
        "benchmark-skylighting" = {
          depends = [
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
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