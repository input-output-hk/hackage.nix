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
    flags = { test-hlint = true; test-doc-coverage = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-affine-space"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/haskellwiki/Yampa";
      url = "";
      synopsis = "A simple library for affine and vector spaces.";
      description = "Affine spaces and vector spaces with a few basic instances.\n\nThis library implements affine spaces and vector spaces. Two instances are\nprovided for affine spaces (points) and two more for vector spaces (vectors).\nThese definitions are strict, implement deepseq, and are designed to have\nminimal memory overhead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }