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
      specVersion = "1.18";
      identifier = { name = "jobs-ui"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Gil Mizrahi";
      maintainer = "gilmi@posteo.net";
      author = "Gil Mizrahi";
      homepage = "";
      url = "";
      synopsis = "A library for creating a jobs management website running custom jobs.";
      description = "A library for creating a jobs management website running custom jobs by defining jobs in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."Spock" or (buildDepError "Spock"))
          (hsPkgs."Spock-digestive" or (buildDepError "Spock-digestive"))
          (hsPkgs."Spock-lucid" or (buildDepError "Spock-lucid"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."digestive-functors" or (buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-lucid" or (buildDepError "digestive-functors-lucid"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."hvect" or (buildDepError "hvect"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty-relative-time" or (buildDepError "pretty-relative-time"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }