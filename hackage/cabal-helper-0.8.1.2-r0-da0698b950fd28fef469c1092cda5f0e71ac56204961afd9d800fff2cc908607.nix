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
    flags = { dev = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "cabal-helper"; version = "0.8.1.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "cabal-helper@dxld.at";
      author = "Daniel Gröber <cabal-helper@dxld.at>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to some of Cabal's configuration state, mainly used by ghc-mod";
      description = "Cabal's little helper provides access to build information gathered by\n@cabal@ when configuring a project. Specifically we're interested in\nretrieving enough information to bring up a compiler session, using the GHC\nAPI, which is similar to running @cabal repl@ in a project.\n\nWhile simple in principle this is complicated by the fact that the\ninformation Cabal writes to disk is in an unstable format and only really\naccessible through the Cabal API itself.\n\nSince we do not want to bind the user of a development tool which utilises\nthis library to a specific version of Cabal we compile the code which\ninterfaces with the Cabal library's API on the user's machine, at runtime,\nagainst whichever version of Cabal was used to write the on disk information\nfor a given project.\n\nIf this version of Cabal is not available on the users machine anymore,\nwhich is fairly likely since cabal-install is usually linked statically, we\nhave support for compiling the Cabal library also. In this case the library\nis installed into a private, isolated, package database in\n@$XDG_CACHE_HOME/cabal-helper@ so as to not interfere with the user's\npackage database.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."cabal-plan" or (errorHandler.buildDepError "cabal-plan"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        build-tools = [
          (hsPkgs.buildPackages.cabal-helper.components.exes.cabal-helper-wrapper or (pkgs.buildPackages.cabal-helper-wrapper or (errorHandler.buildToolDepError "cabal-helper:cabal-helper-wrapper")))
        ];
        buildable = true;
      };
      exes = {
        "cabal-helper-wrapper" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (errorHandler.buildDepError "cabal-plan"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal-install:cabal")))
            (hsPkgs.buildPackages.cabal.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal:cabal")))
          ];
          buildable = true;
        };
        "cabal-helper-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = if flags.dev then true else false;
        };
      };
      tests = {
        "compile-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (errorHandler.buildDepError "cabal-plan"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal-install:cabal")))
            (hsPkgs.buildPackages.cabal.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal:cabal")))
            (hsPkgs.buildPackages.cabal.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal:cabal")))
          ];
          buildable = true;
        };
        "ghc-session" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."cabal-helper" or (errorHandler.buildDepError "cabal-helper"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (errorHandler.buildDepError "cabal-plan"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal-install:cabal")))
            (hsPkgs.buildPackages.cabal.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal:cabal")))
          ];
          buildable = true;
        };
      };
    };
  }