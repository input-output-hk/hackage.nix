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
      identifier = { name = "code-page"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/code-page";
      url = "";
      synopsis = "Windows code page library for Haskell";
      description = "This library provides two modules:\n\n* \"System.IO.CodePage\": a cross-platform module that exports\nfunctions which adjust code pages on Windows, and do nothing\non other operating systems.\n\n* \"System.Win32.CodePage\": On Windows, this exports functions\nfor getting, setting, and analyzing code pages. On other\noperating systems, this module exports nothing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."code-page" or (errorHandler.buildDepError "code-page"))
            ];
          buildable = true;
          };
        };
      };
    }