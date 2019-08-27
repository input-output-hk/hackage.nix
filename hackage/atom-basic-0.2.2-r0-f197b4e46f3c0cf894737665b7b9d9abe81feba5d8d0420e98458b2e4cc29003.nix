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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atom-basic"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Carl Baatz";
      maintainer = "Carl Baatz <carl.baatz@gmail.com>";
      author = "Carl Baatz <carl.baatz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Basic Atom feed construction";
      description = "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a\nrelatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed\nthat can be used to generate feed or entry XML using the types of any\nHaskell XML library. Please see the 'Web.Atom' module documentation for\nmore information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      };
    }