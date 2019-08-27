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
      identifier = { name = "runghc"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2011 Michael Zuser";
      maintainer = "Michael Zuser <mikezuser@gmail.com>";
      author = "Michael Zuser";
      homepage = "https://github.com/bacchanalia/runghc";
      url = "";
      synopsis = "runghc replacement for fast repeated runs";
      description = "This is a replacement for runghc which keeps compiled files\nfor fast runtimes when nothing has changed\n\n> Usage: runghc [options] [ghc-options] file [file-arguments]\n>\n> Options:\n>  -! --compile-only  Do not run the script, just compile it\n>     --exe-dir=DIR   Directory for the executable\n>                         default=<scr-dir>/.compile\n>     --out-dir=DIR   Directory for the intermediate files\n>                         default=<exe-dir>/<basename>-intermediate-files\n>  -? --help          Display this help message";
      buildType = "Simple";
      };
    components = {
      exes = {
        "runghc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      };
    }