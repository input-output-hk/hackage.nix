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
      specVersion = "1.4";
      identifier = { name = "multifocal"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Hugo Pacheco <hpacheco@di.uminho.pt>, Alcino Cunha <alcino@di.uminho.pt>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional Two-level Transformation of XML Schemas";
      description = "Library that implements a two-level transformation (<http://dx.doi.org/10.1007/978-3-540-69611-7_19>) for creating bidirectional views of XML Schemas based on bidirectional lenses. It supports the specialization of generic queries as two-level transformation steps and the optimization of the generated lens data transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pointless-haskell" or (buildDepError "pointless-haskell"))
          (hsPkgs."pointless-lenses" or (buildDepError "pointless-lenses"))
          (hsPkgs."pointless-rewrite" or (buildDepError "pointless-rewrite"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          ];
        };
      exes = {
        "multifocal" = {
          depends = [
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pointless-haskell" or (buildDepError "pointless-haskell"))
            (hsPkgs."pointless-lenses" or (buildDepError "pointless-lenses"))
            (hsPkgs."pointless-rewrite" or (buildDepError "pointless-rewrite"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            ];
          };
        };
      };
    }