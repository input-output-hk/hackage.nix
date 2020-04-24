{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "cabal-helper"; version = "0.8.1.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "dxld@darkboxed.org";
      author = "Daniel Gröber <dxld@darkboxed.org>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to some of Cabal's configuration state, mainly used by ghc-mod";
      description = "Cabal's little helper provides access to build information gathered by\n@cabal@ when configuring a project. Specifically we're interested in\nretrieving enough information to bring up a compiler session, using the GHC\nAPI, which is similar to running @cabal repl@ in a project.\n\nWhile simple in principle this is complicated by the fact that the\ninformation Cabal writes to disk is in an unstable format and only really\naccessible through the Cabal API itself.\n\nSince we do not want to bind the user of a development tool which utilises\nthis library to a specific version of Cabal we compile the code which\ninterfaces with the Cabal library's API on the user's machine, at runtime,\nagainst whichever version of Cabal was used to write the on disk information\nfor a given project.\n\nIf this version of Cabal is not available on the users machine anymore,\nwhich is fairly likely since cabal-install is usually linked statically, we\nhave support for compiling the Cabal library also. In this case the library\nis installed into a private, isolated, package database in\n@\$XDG_CACHE_HOME/cabal-helper@ so as to not interfere with the user's\npackage database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."cabal-plan" or ((hsPkgs.pkgs-errors).buildDepError "cabal-plan"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "cabal-helper-wrapper" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or ((hsPkgs.pkgs-errors).buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        "cabal-helper-main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = if flags.dev then true else false;
          };
        };
      tests = {
        "compile-test" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or ((hsPkgs.pkgs-errors).buildToolDepError "cabal")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or ((hsPkgs.pkgs-errors).buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        "ghc-session" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."cabal-helper" or ((hsPkgs.pkgs-errors).buildDepError "cabal-helper"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or ((hsPkgs.pkgs-errors).buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        };
      };
    }