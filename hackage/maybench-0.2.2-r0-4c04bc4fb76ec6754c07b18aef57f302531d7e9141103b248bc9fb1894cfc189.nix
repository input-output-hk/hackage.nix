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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "maybench"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maybench-devel@googlegroups.com>";
      author = "Maybench developers";
      homepage = "http://code.google.com/p/maybench/";
      url = "";
      synopsis = "Automated benchmarking tool";
      description = "Maybench is a tool for comparing the performance\nbetween two versions of the same program, on a\nseries of benchmarks that you design.\n\nMaybench aims to be easy to use, almost as easy\nas running \"time your-program arg1..arg2\". Ideally,\nit should be a simple matter for outsiders to write\ntiming tests for your programming project and contribute\nthem as part of your performance testing suite.\n\nThe Darcs repository is available at <http://code.haskell.org/maybench>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."benchpress" or (buildDepError "benchpress"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ]);
        };
      exes = {
        "maybench" = {
          depends = [
            (hsPkgs."benchpress" or (buildDepError "benchpress"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              ]);
          };
        "darcs-benchmark" = {
          depends = [
            (hsPkgs."benchpress" or (buildDepError "benchpress"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              ]);
          };
        };
      };
    }