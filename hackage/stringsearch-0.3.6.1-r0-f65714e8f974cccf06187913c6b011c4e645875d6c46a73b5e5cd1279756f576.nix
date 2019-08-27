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
    flags = { base4 = true; base3 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "stringsearch"; version = "0.3.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2011\nDaniel Fischer, Chris Kuklewicz, Justin Bailey";
      maintainer = "daniel.is.fischer@googlemail.com";
      author = "Daniel Fischer, Chris Kuklewicz, Justin Bailey";
      homepage = "https://bitbucket.org/dafis/stringsearch";
      url = "";
      synopsis = "Fast searching, splitting and replacing of ByteStrings";
      description = "This package provides several functions to quickly\nsearch for substrings in strict or lazy ByteStrings.\nIt also provides functions for breaking or splitting\non substrings and replacing all occurrences of a\nsubstring (the first in case of overlaps) with another.\nGHC before 6.8 are no longer supported, other compilers\nonly if they support BangPatterns. If you need it to\nwork with other compilers, send a feature request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.base4
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]
          else if flags.base3
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."containers" or (buildDepError "containers"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      };
    }