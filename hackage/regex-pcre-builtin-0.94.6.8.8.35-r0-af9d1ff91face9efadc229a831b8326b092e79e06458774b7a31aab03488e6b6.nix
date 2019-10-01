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
    flags = { newbase = true; splitbase = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "regex-pcre-builtin"; version = "0.94.6.8.8.35"; };
      license = "BSD-3-Clause";
      copyright = "See LICENSE file";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://hackage.haskell.org/package/regex-pcre";
      url = "http://code.haskell.org/regex-pcre/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.newbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-base" or (buildDepError "regex-base"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-base" or (buildDepError "regex-base"))
              ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."fail" or (buildDepError "fail"));
        buildable = true;
        };
      };
    }