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
      split-base = true;
      pretty = true;
      generic = true;
      mapdict = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "json5hs"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Yang X. Nan";
      maintainer = "sakamitz@yahoo.co.jp";
      author = "Yang X. Nan";
      homepage = "";
      url = "";
      synopsis = "Serialising to and from JSON5";
      description = "The JSON5 Data Interchange Format (JSON5) is a superset of JSON\nthat aims to alleviate some of the limitations of JSON by expanding\nits syntax to include some productions from ECMAScript 5.1.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON5.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then ([
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.generic
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."syb" or (buildDepError "syb"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optional (flags.pretty) (hsPkgs."pretty" or (buildDepError "pretty"))
          else [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      };
    }