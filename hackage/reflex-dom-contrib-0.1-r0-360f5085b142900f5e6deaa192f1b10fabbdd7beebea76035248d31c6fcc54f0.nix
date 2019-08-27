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
      specVersion = "1.10";
      identifier = { name = "reflex-dom-contrib"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, other authors";
      maintainer = "mightybyte@gmail.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/reflex-frp/reflex-dom-contrib";
      url = "";
      synopsis = "A playground for experimenting with infrastructure and common code for reflex applications";
      description = "This library is intended to be a public playground for\ndeveloping infrastructure, higher level APIs, and widget\nlibraries for reflex FRP applications. This library is\nexperimental and does not have a strong commitment to\npreserving backwards compatibility. It will not have a\nhigh bar for the quality of contributions. That being\nsaid, we prefer commits that add new things rather than\nchanging existing ones. If you are wondering if there is\nsome convenience code or abstractions and you don't find\nthem in reflex or reflex-dom, look here and see if anyone\nhas already done it. If you have general-purpose reflex\ncode that you find useful that is not already here, add\nit to this repository and send us a pull request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."readable" or (buildDepError "readable"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      };
    }