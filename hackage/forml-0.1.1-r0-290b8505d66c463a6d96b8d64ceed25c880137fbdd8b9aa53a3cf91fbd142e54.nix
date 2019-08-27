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
      specVersion = "1.4";
      identifier = { name = "forml"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "steinlink@gmail.com";
      author = "Andrew Stein";
      homepage = "http://texodus.github.com/forml";
      url = "";
      synopsis = "A statically typed, functional programming language";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "forml" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."indents" or (buildDepError "indents"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."jmacro" or (buildDepError "jmacro"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }