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
      identifier = { name = "percent-format"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/percent-format#readme";
      url = "";
      synopsis = "simple printf-style string formatting";
      description = "The @Text.PercentFormat@ library provides printf-style string formatting.  It\nprovides a @%@ operator (as in Ruby or Python) and uses the old\nC-printf-style format you know and love.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "number" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "scientific" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "prop" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "quotient" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."percent-format" or (buildDepError "percent-format"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }