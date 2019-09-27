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
    flags = {
      all = false;
      server = true;
      test1 = false;
      chalkmark = false;
      simple = false;
      cbbe1 = false;
      example = false;
      tutorial = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "chalkboard"; version = "1.9.0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill, Kevin Matlage";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/ChalkBoard";
      url = "";
      synopsis = "Combinators for building and processing 2D images.";
      description = "ChalkBoard is a Haskell hosted Domain Specific Language (DSL) for image generation and processing.\nThe basic structure is a Chalk Board, a two-dimensional canvas of values, typically colors.\nChalkBoard provides the usual image processing functions (masking, overlaying, function mapping,\ncropping, warping, rotating) as well as a few more unusual ones.\nImages can be imported into ChalkBoard, as first-class color chalk boards.\nChalkBoard also provides combinators for drawing shapes on directly on boards.\nThe system is based loosely on Pan, but the principal image type, a Board, is abstract.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."data-reify" or (buildDepError "data-reify"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."Codec-Image-DevIL" or (buildDepError "Codec-Image-DevIL"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "chalkboard-server-1_9_0_16" = {
          buildable = if flags.server then true else false;
          };
        "chalkboard-tests-test1" = {
          buildable = if flags.all || flags.test1 then true else false;
          };
        "chalkboard-tests-chalkmark" = {
          buildable = if flags.all || flags.chalkmark then true else false;
          };
        "chalkboard-tests-simple" = {
          depends = (pkgs.lib).optional (!(flags.all || flags.simple)) (hsPkgs."base" or (buildDepError "base"));
          buildable = if flags.all || flags.simple then true else false;
          };
        "chalkboard-tests-cbbe1" = {
          buildable = if flags.all || flags.cbbe1 then true else false;
          };
        "chalkboard-examples-example" = {
          buildable = if flags.all || flags.example then true else false;
          };
        "chalkboard-tutorial-basic" = {
          buildable = if flags.all || flags.tutorial then true else false;
          };
        };
      };
    }