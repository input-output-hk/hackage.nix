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
    flags = { splitbase = true; buildtests = false; mintime15 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC"; version = "2.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
      author = "John Goerzen, Nicolas Wu";
      homepage = "https://github.com/hdbc/hdbc";
      url = "";
      synopsis = "Haskell Database Connectivity";
      description = "HDBC provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ] ++ (if flags.mintime15
            then [ (hsPkgs."time" or (buildDepError "time")) ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ])
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or (buildDepError "base"));
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) (([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."testpack" or (buildDepError "testpack"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."containers" or (buildDepError "containers"))
              ] ++ (if flags.mintime15
              then [ (hsPkgs."time" or (buildDepError "time")) ]
              else [
                (hsPkgs."time" or (buildDepError "time"))
                (hsPkgs."old-locale" or (buildDepError "old-locale"))
                ])
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or (buildDepError "base")));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }