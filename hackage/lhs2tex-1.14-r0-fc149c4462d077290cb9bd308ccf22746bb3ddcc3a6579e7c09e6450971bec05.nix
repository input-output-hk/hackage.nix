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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "lhs2tex"; version = "1.14"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
      author = "Ralf Hinze <ralf@informatik.uni-bonn.de>, Andres Loeh <lhs2tex@andres-loeh.de>";
      homepage = "http://www.andres-loeh.de/lhs2tex/";
      url = "";
      synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
      description = "Preprocessor for typesetting Haskell sources with LaTeX";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lhs2TeX" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
              ];
          };
        };
      };
    }