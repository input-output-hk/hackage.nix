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
      specVersion = "1.8";
      identifier = { name = "PandocAgda"; version = "2.3.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Péter Diviánszky <divipp@gmail.com>";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Pandoc support for literate Agda";
      description = "Agda is a dependently typed functional programming language\nand a proof assistant.\n\nThis package contains a modified Agda compiler which\nprocess comments in literate Agda files with Pandoc.\nPandoc is a universal document converter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (if compiler.isGhc && (compiler.version).lt "7.6"
          then [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]);
        buildable = true;
        };
      exes = {
        "agdapandoc" = {
          depends = [
            (hsPkgs."PandocAgda" or (errorHandler.buildDepError "PandocAgda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }