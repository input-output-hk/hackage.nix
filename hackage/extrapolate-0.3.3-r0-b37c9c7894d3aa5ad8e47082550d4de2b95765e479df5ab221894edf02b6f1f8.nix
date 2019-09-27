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
      identifier = { name = "extrapolate"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela";
      homepage = "https://github.com/rudymatela/extrapolate#readme";
      url = "";
      synopsis = "generalize counter-examples of test properties";
      description = "Extrapolate is a tool able to provide generalized counter-examples of test\nproperties where irrelevant sub-expressions are replaces with variables.\n\nFor the incorrect property @\\\\xs -> nub xs == (xs::[Int])@:\n\n* @[0,0]@ is a counter-example;\n\n* @x:x:_@ is a generalized counter-example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."leancheck" or (buildDepError "leancheck"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."speculate" or (buildDepError "speculate"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."speculate" or (buildDepError "speculate"))
            (hsPkgs."extrapolate" or (buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "derive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."speculate" or (buildDepError "speculate"))
            (hsPkgs."extrapolate" or (buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."speculate" or (buildDepError "speculate"))
            (hsPkgs."extrapolate" or (buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "new" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."speculate" or (buildDepError "speculate"))
            (hsPkgs."extrapolate" or (buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "step-by-step" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            (hsPkgs."speculate" or (buildDepError "speculate"))
            (hsPkgs."extrapolate" or (buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        };
      };
    }