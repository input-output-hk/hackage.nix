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
      identifier = { name = "clckwrks-plugin-media"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://clckwrks.com/";
      url = "";
      synopsis = "media plugin for clckwrks";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."clckwrks" or (buildDepError "clckwrks"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."gd" or (buildDepError "gd"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."ixset" or (buildDepError "ixset"))
          (hsPkgs."magic" or (buildDepError "magic"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."reform" or (buildDepError "reform"))
          (hsPkgs."reform-happstack" or (buildDepError "reform-happstack"))
          (hsPkgs."reform-hsp" or (buildDepError "reform-hsp"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."web-plugins" or (buildDepError "web-plugins"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-th" or (buildDepError "web-routes-th"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (buildToolDepError "hsx2hs")))
          ];
        };
      };
    }