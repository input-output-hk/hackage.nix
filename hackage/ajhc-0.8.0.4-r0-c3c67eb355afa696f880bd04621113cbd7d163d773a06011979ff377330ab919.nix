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
      specVersion = "1.6";
      identifier = { name = "ajhc"; version = "0.8.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "John Meacham <john@repetae.net>";
      homepage = "http://ajhc.masterq.net/";
      url = "";
      synopsis = "Haskell compiler that produce binary through C language";
      description = "Ajhc is a fork of jhc.\nThe jhc is a haskell compiler which aims to produce the most efficient\nprograms possible via whole program analysis and other optimizations.\n\nThe jhc is very minimalist in that it does not have a precompiled run time\nsystem, but rather generates what is needed as part of the compilation\nprocess. However, back ends do have specific run-time representations of\ndata, which can be affected by things like the choice of garbage collector.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ajhc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }