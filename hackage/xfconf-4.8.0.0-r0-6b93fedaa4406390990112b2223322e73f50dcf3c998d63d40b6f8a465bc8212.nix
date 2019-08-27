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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "xfconf"; version = "4.8.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "john.obbele@gmail.com";
      author = "John Obbele";
      homepage = "http://patch-tag.com/r/obbele/xfconf/home";
      url = "";
      synopsis = "FFI bindings to xfconf";
      description = "Xfconf is a simple client-server configuration storage and query\nsystem build on top of glib and used by XFCE.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."glib" or (buildDepError "glib"))
          ] ++ (pkgs.lib).optionals (flags.buildtests) [
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libxfconf-0" or (pkgConfDepError "libxfconf-0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
          ];
        };
      exes = {
        "tests" = {
          pkgconfig = [
            (pkgconfPkgs."libxfconf-0" or (pkgConfDepError "libxfconf-0"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
            (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
            (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
            ];
          };
        "testGlib" = {
          pkgconfig = [
            (pkgconfPkgs."libxfconf-0" or (pkgConfDepError "libxfconf-0"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
            (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
            (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
            ];
          };
        };
      };
    }