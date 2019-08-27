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
      specVersion = "1.2";
      identifier = { name = "elerea-examples"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Example applications for Elerea";
      description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* bounce (current): an example for creating dynamic collections of\nsignals with the experimental interface; left click to create\nballs, drag existing balls with left button to propel them and\ndrag with right to select balls for deletion (upon release)\n\n* chase (legacy): a minimal example that demonstrates reactivity and\nmutually recursive signals\n\n* breakout (legacy): a not too fancy breakout clone that also\ndemonstrates Graphviz output; you can get an SVG rendition of the\nsignal structure with the following command if Graphviz is\ninstalled: @elerea-breakout --dump-dot | dot -Tsvg -o\nbreakout.svg@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "elerea-bounce" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (buildDepError "GLFW"))
            ];
          };
        "elerea-breakout" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (buildDepError "GLFW"))
            ];
          };
        "elerea-chase" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (buildDepError "GLFW"))
            ];
          };
        };
      };
    }