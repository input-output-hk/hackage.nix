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
      identifier = { name = "arguedit"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "msjean@gmx.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A computer assisted argumentation transcription and editing software.";
      description = "ArguEdit is an argument transciption and editing software.\nIt allows for rather objective argumentation by visualizing the elements of an argumentation.\nArgumentations may begin with definitions or a thesis. Then to support the thesis premises can be added with indentation, so that the relation of belonging is visible and spreading in a tree like manner.\nThereafter conclusions can be drawns from what was given above.\nBy making rather immaterial arguments perceivable the arguments gain persuasiveness.\nCirculations, undefined expressions or other flaws of argumentation can be pointed at.\nThe element buttons change color on clicking so each element can be marked.\nFor instance undiscussed elements could be colored gray, dismissed ones red, valid ones blue and so on.\nThis way discussing in philosophical arguments as well as in any other subject becomes computer assisted and gains power over emotionally heated pitfalls.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ArguEdit.bin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."indents" or (buildDepError "indents"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            ];
          };
        };
      };
    }