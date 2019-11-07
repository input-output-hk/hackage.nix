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
      specVersion = "2.4";
      identifier = { name = "hw-all"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-all#readme";
      url = "";
      synopsis = "Demo library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
          (hsPkgs."hw-aeson" or (buildDepError "hw-aeson"))
          (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-conduit" or (buildDepError "hw-conduit"))
          (hsPkgs."hw-diagnostics" or (buildDepError "hw-diagnostics"))
          (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
          (hsPkgs."hw-dump" or (buildDepError "hw-dump"))
          (hsPkgs."hw-eliasfano" or (buildDepError "hw-eliasfano"))
          (hsPkgs."hw-excess" or (buildDepError "hw-excess"))
          (hsPkgs."hw-fingertree" or (buildDepError "hw-fingertree"))
          (hsPkgs."hw-fingertree-strict" or (buildDepError "hw-fingertree-strict"))
          (hsPkgs."hw-hedgehog" or (buildDepError "hw-hedgehog"))
          (hsPkgs."hw-hspec-hedgehog" or (buildDepError "hw-hspec-hedgehog"))
          (hsPkgs."hw-int" or (buildDepError "hw-int"))
          (hsPkgs."hw-ip" or (buildDepError "hw-ip"))
          (hsPkgs."hw-json" or (buildDepError "hw-json"))
          (hsPkgs."hw-json-lens" or (buildDepError "hw-json-lens"))
          (hsPkgs."hw-json-simd" or (buildDepError "hw-json-simd"))
          (hsPkgs."hw-json-simple-cursor" or (buildDepError "hw-json-simple-cursor"))
          (hsPkgs."hw-json-standard-cursor" or (buildDepError "hw-json-standard-cursor"))
          (hsPkgs."hw-mquery" or (buildDepError "hw-mquery"))
          (hsPkgs."hw-packed-vector" or (buildDepError "hw-packed-vector"))
          (hsPkgs."hw-parser" or (buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
          (hsPkgs."hw-streams" or (buildDepError "hw-streams"))
          (hsPkgs."hw-string-parse" or (buildDepError "hw-string-parse"))
          (hsPkgs."hw-succinct" or (buildDepError "hw-succinct"))
          (hsPkgs."hw-uri" or (buildDepError "hw-uri"))
          (hsPkgs."hw-xml" or (buildDepError "hw-xml"))
          ];
        buildable = true;
        };
      };
    }