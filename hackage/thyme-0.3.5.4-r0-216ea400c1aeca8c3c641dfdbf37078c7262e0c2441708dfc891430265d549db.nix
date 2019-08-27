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
    flags = {
      bug-for-bug = true;
      hlint = false;
      lens = false;
      show-internal = false;
      werror = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "thyme"; version = "0.3.5.4"; };
      license = "BSD-3-Clause";
      copyright = "© 2013−2014 Liyang HU";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU, Ashley Yakeley";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "Thyme is a rewrite of the fine @time@ library, with a particular focus\non performance for applications that make heavy use of timestamps.\n\nSee <http://hackage.haskell.org/package/thyme/docs/Data-Thyme.html Data.Thyme> for a full description.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (if flags.lens
          then [ (hsPkgs."lens" or (buildDepError "lens")) ]
          else [ (hsPkgs."profunctors" or (buildDepError "profunctors")) ]);
        build-tools = (pkgs.lib).optional (system.isOsx) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")));
        };
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ] ++ (if flags.lens
            then [ (hsPkgs."lens" or (buildDepError "lens")) ]
            else [
              (hsPkgs."profunctors" or (buildDepError "profunctors"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              ]);
          };
        "rewrite" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."system-posix-redirect" or (buildDepError "system-posix-redirect"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (flags.hlint) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ] ++ (if flags.lens
            then [ (hsPkgs."lens" or (buildDepError "lens")) ]
            else [ (hsPkgs."profunctors" or (buildDepError "profunctors")) ]);
          };
        };
      };
    }