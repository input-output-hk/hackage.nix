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
    flags = { ofd-locking = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "lukko"; version = "0.1.1.1"; };
      license = "GPL-2.0-or-later AND BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "File locking";
      description = "This package provides access to platform dependent file locking APIs:\n\n* Open file descriptor locking on Linux (\"Lukko.OFD\")\n* @flock@ locking on unix platforms (\"Lukko.FLock\")\n* Windows locking @LockFileEx@ (\"Lukko.Windows\")\n* No-op locking, which throws exceptions (\"Lukko.NoOp\")\n* \"Lukko\" module exports the best option for the target platform with uniform API.\n\nThere are alternative file locking packages:\n\n* \"GHC.IO.Handle.Lock\" in @base >= 4.10@ is good enough for most use cases.\nHowever, uses only 'Handle's so these locks cannot be used for intra-process locking.\n(You should use e.g. 'MVar' in addition).\n\n* <https://hackage.haskell.org/package/filelock filelock> doesn't support OFD locking.\n\n/Lukko/ means lock in Finnish.\n\nSubmodules \"Lukko.OFD\", \"Lukko.Windows\" etc are available based on following conditions.\n\n@\nif os(windows)\n\\  cpp-options: -DHAS_WINDOWS_LOCK\n\nelif (os(linux) && flag(ofd-locking))\n\\  cpp-options: -DHAS_OFD_LOCKING\n\\  cpp-options: -DHAS_FLOCK\n\nelif !(os(solaris) || os(aix))\n\\  cpp-options: -DHAS_FLOCK\n@\n\n\"Lukko.FLock\" is available on not (Windows or Solaris or AIX).\n\"Lukko.NoOp\" is always available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-thread" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lukko" or (buildDepError "lukko"))
            (hsPkgs."singleton-bool" or (buildDepError "singleton-bool"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."tagged" or (buildDepError "tagged"));
          buildable = true;
          };
        "test-process" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lukko" or (buildDepError "lukko"))
            ];
          buildable = true;
          };
        };
      };
    }