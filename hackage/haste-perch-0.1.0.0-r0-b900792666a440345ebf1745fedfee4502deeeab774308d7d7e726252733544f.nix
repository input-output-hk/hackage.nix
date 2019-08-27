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
      identifier = { name = "haste-perch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "https://github.com/agocorona/haste-perch";
      url = "";
      synopsis = "Create dynamic HTML in the browser using blaze-html-style notation with Haste";
      description = "Perch defines builder elements (perchs) for Haste.DOM elements that are appendable, so that dynamic HTML can be created in the client in a natural way, like textual HTML, but programmatically and with the advantage of static type checking. It can be ported to other haskell-js compilers\n\nHaste is a compiler that generates Javascript code from Haskell.\n\nhttps://github.com/valderman/haste-compiler\n\nThe Haste.DOM module define a thin layer over the JavaScript DOM. The DOM is a low level HTML tree manipulation API. That makes the creation and manipulation of DOM elements almost as painful as in JavaScript.\n\nThis package makes the creation of DOM elements easy with a syntax similar to other haskell HTML generators, using monoids and monads, such is the case of the package blaze-html.\n\nhttp://hackage.haskell.org/package/blaze-html\n\nSince the creation is in the browser, that permit quite dynamic pages for data\npresentation, and interctive textual (a.k.a \"serious\") applications and in general\nthe development of client-side web frameworks using haskell with the haste compiler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haste-compiler" or (buildDepError "haste-compiler"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }