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
      identifier = { name = "xml-basic"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Basics for XML/HTML representation and processing";
      description = "We provide basic data types for XML representation,\nlike names, attributes, entities.\nYes we try hard to get type safe XML handling out of Haskell 98.\nWe also provide information about exceptional HTML tags,\nlike self-closing tags.\nThis package provides common functionality\nthat is both needed in list (tagchup) and tree (wraxml) representations of XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (if compiler.isJhc && true
            then [
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."applicative" or (buildDepError "applicative"))
              ]
            else [
              (hsPkgs."special-functors" or (buildDepError "special-functors"))
              ]));
        };
      };
    }