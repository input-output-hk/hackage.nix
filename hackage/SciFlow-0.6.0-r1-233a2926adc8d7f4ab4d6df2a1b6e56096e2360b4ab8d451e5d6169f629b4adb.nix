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
    flags = { drmaa = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "SciFlow"; version = "0.6.0"; };
      license = "MIT";
      copyright = "(c) 2015-2017 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is a DSL for building scientific workflows.\nWorkflows built with SciFlow can be run either on desktop\ncomputers or in grid computing environments that\nsupport DRMAA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."rainbow" or (buildDepError "rainbow"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (flags.drmaa) (hsPkgs."drmaa" or (buildDepError "drmaa"));
        };
      };
    }