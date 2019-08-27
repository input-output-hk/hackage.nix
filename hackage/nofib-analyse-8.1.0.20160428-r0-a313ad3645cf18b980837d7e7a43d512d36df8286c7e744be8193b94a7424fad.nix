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
      specVersion = "1.10";
      identifier = { name = "nofib-analyse"; version = "8.1.0.20160428"; };
      license = "BSD-3-Clause";
      copyright = "1997 - 2005 Simon Marlow";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Simon Marlow";
      homepage = "https://ghc.haskell.org/trac/ghc/wiki/Building/RunningNoFib";
      url = "";
      synopsis = "Parse and compare nofib runs";
      description = "The nofib benchmark suite is the standard benchmark suite\nto measure Haskell compilers. The nofib-analyse program can parse\nthe logs of nofib runs, and compare their output, producing tables in text,\nLaTeX or HTML format.\n\nnofib-analyse is readily available in your GHC source tree in\n@nofib/nofib-analyse@, so usually, you will not need this packages. It might\nhowever be handy when you need to analyse log files without having a checked-out\ncopy of GHC around.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nofib-analyse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }