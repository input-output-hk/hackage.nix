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
      identifier = { name = "sunroof-server"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 The University of Kansas";
      maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
      author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
      homepage = "https://github.com/ku-fpg/sunroof-server";
      url = "";
      synopsis = "Monadic Javascript Compiler - Server Utilities";
      description = "Utilities to use Sunroof together with Kansas-Comet to create web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."kansas-comet" or (buildDepError "kansas-comet"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
          ];
        };
      };
    }