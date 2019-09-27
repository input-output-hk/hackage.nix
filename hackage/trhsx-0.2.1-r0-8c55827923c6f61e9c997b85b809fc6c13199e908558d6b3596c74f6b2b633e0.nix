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
      specVersion = "0";
      identifier = { name = "trhsx"; version = "0.2.1"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://www.cs.chalmers.se/~d00nibro/harp/";
      url = "";
      synopsis = "trhsx is the preprocessor for Harp and HSP";
      description = "trhsx, the desugaring pre-processor executable for HaRP and HSP.\nRequires haskell-src-exts to build.\n\nIt is meant to be used as a preprocessor for GHC, with the command\n'ghc -F -pgmF trhsx infile'. It can also be used as a separate tool,\nin which case the command-line syntax is:\n\n\$ trhsx \\<infile\\>   Desugars \\<infile\\> and gives the result on standard output.\n\n\$ trhsx \\<infile\\> \\<outfile\\>  Desugars \\<infile\\> and writes the result to \\<outfile\\>.\n\nThe pre-processed files rely on pattern guards and will therefore work with GHC only.\n\nFor details on usage, please see the website.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "trhsx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }