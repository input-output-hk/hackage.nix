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
      identifier = { name = "respond"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, aidan coyne";
      maintainer = "coynea90@gmail.com";
      author = "aidan coyne";
      homepage = "https://github.com/raptros/respond";
      url = "";
      synopsis = "process and route HTTP requests and generate responses on top of WAI";
      description = "a Haskell library built on top of WAI for processing and routing HTTP requests and generating responses.  see the source repository for a simple example application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."HList" or (buildDepError "HList"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."respond" or (buildDepError "respond"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            ];
          buildable = true;
          };
        };
      };
    }