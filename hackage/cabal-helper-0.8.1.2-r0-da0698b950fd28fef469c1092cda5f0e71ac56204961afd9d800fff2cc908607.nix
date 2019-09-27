let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "Cabal's little helper provides access to build information gathered by\n@cabal@ when configuring a project. Specifically we're interested in\nretrieving enough information to bring up a compiler session, using the GHC\nAPI, which is similar to running @cabal repl@ in a project.\n\nWhile simple in principle this is complicated by the fact that the\ninformation Cabal writes to disk is in an unstable format and only really\naccessible through the Cabal API itself.\n\nSince we do not want to bind the user of a development tool which utilises\nthis library to a specific version of Cabal we compile the code which\ninterfaces with the Cabal library's API on the user's machine, at runtime,\nagainst whichever version of Cabal was used to write the on disk information\nfor a given project.\n\nIf this version of Cabal is not available on the users machine anymore,\nwhich is fairly likely since cabal-install is usually linked statically, we\nhave support for compiling the Cabal library also. In this case the library\nis installed into a private, isolated, package database in\n@\$XDG_CACHE_HOME/cabal-helper@ so as to not interfere with the user's\npackage database.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."cabal-plan" or (buildDepError "cabal-plan"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        build-tools = [
          (hsPkgs.buildPackages.cabal-helper or (pkgs.buildPackages.cabal-helper or (buildToolDepError "cabal-helper")))
          ];
        buildable = true;
        };
      exes = {
        "cabal-helper-wrapper" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (buildDepError "cabal-plan"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or (buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or (buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        "cabal-helper-main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          buildable = if flags.dev then true else false;
          };
        };
      tests = {
        "compile-test" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (buildDepError "cabal-plan"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or (buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or (buildToolDepError "cabal")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or (buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        "ghc-session" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-plan" or (buildDepError "cabal-plan"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or (buildToolDepError "cabal-install")))
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or (buildToolDepError "cabal")))
            ];
          buildable = true;
          };
        };
      };
    }