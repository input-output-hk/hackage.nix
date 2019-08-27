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
      identifier = { name = "elm-build-lib"; version = "0.14.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2014 Joey Eremondi";
      maintainer = "joey@eremondi.com";
      author = "Joey Eremondi";
      homepage = "http://github.com/JoeyEremondi/elm-build-lib";
      url = "";
      synopsis = "Compile Elm code to JS within Haskell";
      description = "This library provides both runtime and Template Haskell functions which let you take multi-module\nElm Programs and compile them to JavaScript.\nThe main goal of this is to allow Elm to be used as a frontend for Haskell servers or Web apps.\nThe library is independent of any specific framework, so it should work with Yesod, Snap, Happstack, Scotty, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."elm-core-sources" or (buildDepError "elm-core-sources"))
          (hsPkgs."elm-compiler" or (buildDepError "elm-compiler"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }