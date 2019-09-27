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
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Frames"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2015 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Data frames For working with tabular data files";
      description = "User-friendly, type safe, runtime efficient tooling for\nworking with tabular data deserialized from\ncomma-separated values (CSV) files. The type of\neach row of data is inferred from data, which can\nthen be streamed from disk, or worked with in\nmemory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."readable" or (buildDepError "readable"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      exes = {
        "getdata" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "plot" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."diagrams-rasterific" or (buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."readable" or (buildDepError "readable"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "plot2" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."diagrams-rasterific" or (buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."readable" or (buildDepError "readable"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."readable" or (buildDepError "readable"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "tutorial" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."readable" or (buildDepError "readable"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "benchdemo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "missing" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "kata04" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."readable" or (buildDepError "readable"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      benchmarks = {
        "insurance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = true;
          };
        };
      };
    }