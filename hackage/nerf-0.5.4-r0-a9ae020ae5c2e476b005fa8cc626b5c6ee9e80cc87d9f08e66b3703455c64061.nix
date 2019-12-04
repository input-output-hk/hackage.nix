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
      specVersion = "1.12";
      identifier = { name = "nerf"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "2012-2019 IPI PAN, Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nerf#readme";
      url = "";
      synopsis = "Nerf, a named entity recognition tool based on linear-chain CRFs";
      description = "Please see the README on GitHub at <https://github.com/kawu/nerf#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."IntervalMap" or (buildDepError "IntervalMap"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."crf-chain1" or (buildDepError "crf-chain1"))
          (hsPkgs."data-named" or (buildDepError "data-named"))
          (hsPkgs."dawg" or (buildDepError "dawg"))
          (hsPkgs."monad-ox" or (buildDepError "monad-ox"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."polimorf" or (buildDepError "polimorf"))
          (hsPkgs."polysoup" or (buildDepError "polysoup"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-binary" or (buildDepError "text-binary"))
          (hsPkgs."tokenize" or (buildDepError "tokenize"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "nerf" = {
          depends = [
            (hsPkgs."IntervalMap" or (buildDepError "IntervalMap"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."crf-chain1" or (buildDepError "crf-chain1"))
            (hsPkgs."data-named" or (buildDepError "data-named"))
            (hsPkgs."dawg" or (buildDepError "dawg"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."monad-ox" or (buildDepError "monad-ox"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nerf" or (buildDepError "nerf"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."polimorf" or (buildDepError "polimorf"))
            (hsPkgs."polysoup" or (buildDepError "polysoup"))
            (hsPkgs."sgd" or (buildDepError "sgd"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-binary" or (buildDepError "text-binary"))
            (hsPkgs."tokenize" or (buildDepError "tokenize"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }