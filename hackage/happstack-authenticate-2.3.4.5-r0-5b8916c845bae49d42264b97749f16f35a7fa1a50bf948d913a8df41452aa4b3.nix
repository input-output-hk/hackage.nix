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
      specVersion = "1.8";
      identifier = { name = "happstack-authenticate"; version = "2.3.4.5"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack Authentication Library";
      description = "A themeable authentication library with support for username+password and OpenId.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."authenticate" or (buildDepError "authenticate"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."boomerang" or (buildDepError "boomerang"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."email-validate" or (buildDepError "email-validate"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hsx2hs" or (buildDepError "hsx2hs"))
          (hsPkgs."jmacro" or (buildDepError "jmacro"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."ixset-typed" or (buildDepError "ixset-typed"))
          (hsPkgs."happstack-jmacro" or (buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."happstack-hsp" or (buildDepError "happstack-hsp"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or (buildDepError "hsx-jmacro"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."pwstore-purehaskell" or (buildDepError "pwstore-purehaskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."userid" or (buildDepError "userid"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-boomerang" or (buildDepError "web-routes-boomerang"))
          (hsPkgs."web-routes-happstack" or (buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-th" or (buildDepError "web-routes-th"))
          (hsPkgs."web-routes-hsp" or (buildDepError "web-routes-hsp"))
          ];
        buildable = true;
        };
      };
    }