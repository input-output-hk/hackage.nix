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
      specVersion = "1.18";
      identifier = { name = "asciidiagram"; version = "1.3.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "Pretty rendering of Ascii diagram into svg or png.";
      description = "Transform Ascii art diagram like this:\n\n@\n,               \\/---------+\n+---------+     |         |\n|  ASCII  +----\\>| Diagram |\n+---------+     |         |\n|         |     +--+------\\/\n\\\\---*-----\\/\\<=======\\/\n@\n\nInto this:\n\n<<data:image/png;base64,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>>\n\nSee the documentation of the Text.AsciiDiagram module for the\ndescription of the input format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."svg-tree" or (buildDepError "svg-tree"))
          (hsPkgs."rasterific-svg" or (buildDepError "rasterific-svg"))
          (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      exes = {
        "asciidiagram" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."rasterific-svg" or (buildDepError "rasterific-svg"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."asciidiagram" or (buildDepError "asciidiagram"))
            (hsPkgs."svg-tree" or (buildDepError "svg-tree"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
            ];
          };
        };
      };
    }