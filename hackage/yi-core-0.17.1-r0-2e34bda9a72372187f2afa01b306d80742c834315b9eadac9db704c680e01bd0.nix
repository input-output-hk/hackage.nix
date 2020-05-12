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
    flags = { hint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi-core"; version = "0.17.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor core library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."dynamic-state" or (errorHandler.buildDepError "dynamic-state"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."oo-prototypes" or (errorHandler.buildDepError "oo-prototypes"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ] ++ (pkgs.lib).optional (flags.hint) (hsPkgs."hint" or (errorHandler.buildDepError "hint"))) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
            (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }