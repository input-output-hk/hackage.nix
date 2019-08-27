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
      specVersion = "1.6";
      identifier = { name = "ddc-core-flow"; version = "0.4.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler data flow compiler.";
      description = "Disciple Core Flow is a Domain Specific Language (DSL) for writing first\norder data flow programs.\nThis package provides the language definition as a fragment of Disciple\nCore. It also provides an implementation of the lowering transform which\nconverts data flow programs into imperative nested loop code.\nThe @repa-plugin@ package provides a GHC plugin that transforms GHC core\nprograms gained from vanilla Haskell sources. Use this package if you\njust want to write and run real programs.\nAlternatively, Disciple Core Flow programs can be transformed directly\nvia the @ddc@ or @ddci-core@ command line interfaces, but DDC itself\ndoesn't provide full compilation to machine code. Use GHC and the\n@repa-plugin@ for that.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."limp" or (buildDepError "limp"))
          (hsPkgs."limp-cbc" or (buildDepError "limp-cbc"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ddc-core" or (buildDepError "ddc-core"))
          (hsPkgs."ddc-core-salt" or (buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-simpl" or (buildDepError "ddc-core-simpl"))
          (hsPkgs."ddc-core-tetra" or (buildDepError "ddc-core-tetra"))
          ];
        };
      };
    }