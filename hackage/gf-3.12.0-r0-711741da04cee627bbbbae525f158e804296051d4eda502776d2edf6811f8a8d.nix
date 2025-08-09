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
    flags = {
      interrupt = true;
      server = true;
      network-uri = true;
      c-runtime = false;
    };
    package = {
      specVersion = "1.22";
      identifier = { name = "gf"; version = "3.12.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "John J. Camilleri <john@digitalgrammars.com>";
      author = "";
      homepage = "https://www.grammaticalframework.org/";
      url = "";
      synopsis = "Grammatical Framework";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
        ]) ++ pkgs.lib.optionals (flags.server) ([
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."httpd-shed" or (errorHandler.buildDepError "httpd-shed"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]))) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          ] ++ [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        libs = pkgs.lib.optionals (flags.c-runtime) [
          (pkgs."pgf" or (errorHandler.sysDepError "pgf"))
          (pkgs."gu" or (errorHandler.sysDepError "gu"))
        ];
        build-tools = pkgs.lib.optional (flags.c-runtime) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs"))) ++ [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
      exes = {
        "gf" = {
          depends = [
            (hsPkgs."gf" or (errorHandler.buildDepError "gf"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gf-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.gf.components.exes.gf or (pkgs.pkgsBuildBuild.gf or (errorHandler.buildToolDepError "gf:gf")))
          ];
          buildable = true;
        };
      };
    };
  }