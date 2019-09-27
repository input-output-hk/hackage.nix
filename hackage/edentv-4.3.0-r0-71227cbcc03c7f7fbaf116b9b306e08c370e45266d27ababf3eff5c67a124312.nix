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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "edentv"; version = "4.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2005-2012  Phillips Universitaet Marburg";
      maintainer = "Eden group <eden@mathematik.uni-marburg.de>";
      author = "Jost Berthold, Mischa Dieterle, Thomas Horstmeyer, Bernhard Pickenbrock, Tobias Sauerwein, Bjoern Struckmeier";
      homepage = "http://www.mathematik.uni-marburg.de/~eden";
      url = "";
      synopsis = "A Tool to Visualize Parallel Functional Program Executions";
      description = "The Eden Trace Viewer is a tool designed to help\nprogrammers optimize Eden programs by visualising traces\n(eventlog files) of Eden program runs. It is similar to\n(and precedes) threadscope. However, it has been designed\nto visualize not just threads, but also different\nmachines, processes, and messages between processes.\nEdenTV can show you what has happened during the\nexecution of your program. This is very helpful to\noptimize parallel programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "edentv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."ghc-events-parallel" or (buildDepError "ghc-events-parallel"))
            ];
          buildable = true;
          };
        };
      };
    }