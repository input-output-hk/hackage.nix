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
      specVersion = "2.0";
      identifier = { name = "hgeometry-ipe"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "frank@fstaals.net";
      author = "Frank Staals";
      homepage = "https://fstaals.net/software/hgeometry";
      url = "";
      synopsis = "Reading and Writing ipe7 files.";
      description = "Reading and Writing ipe7 files and converting them to and from HGeometry types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."hgeometry-combinatorial" or (buildDepError "hgeometry-combinatorial"))
          (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fixed-vector" or (buildDepError "fixed-vector"))
          (hsPkgs."data-clist" or (buildDepError "data-clist"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."approximate-equality" or (buildDepError "approximate-equality"))
            (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
            (hsPkgs."hgeometry-combinatorial" or (buildDepError "hgeometry-combinatorial"))
            (hsPkgs."hgeometry-ipe" or (buildDepError "hgeometry-ipe"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."data-clist" or (buildDepError "data-clist"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }