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
      interrupt = true;
      server = true;
      network-uri = true;
      custom-binary = true;
      c-runtime = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "gf"; version = "3.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Thomas Hallgren";
      author = "";
      homepage = "http://www.grammaticalframework.org/";
      url = "";
      synopsis = "Grammatical Framework";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-compat" or (buildDepError "time-compat"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          ] ++ (pkgs.lib).optionals (!flags.custom-binary) [
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          ]) ++ (pkgs.lib).optionals (flags.server) ([
          (hsPkgs."httpd-shed" or (buildDepError "httpd-shed"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."cgi" or (buildDepError "cgi"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ]))) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            ]);
        libs = (pkgs.lib).optionals (flags.c-runtime) [
          (pkgs."gu" or (sysDepError "gu"))
          (pkgs."pgf" or (sysDepError "pgf"))
          ];
        build-tools = (pkgs.lib).optional (flags.c-runtime) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs"))) ++ [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          ];
        };
      exes = {
        "gf" = {
          depends = [
            (hsPkgs."gf" or (buildDepError "gf"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "pgf-shell" = {
          depends = [
            (hsPkgs."gf" or (buildDepError "gf"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            ];
          };
        };
      tests = {
        "rgl-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "gf-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }