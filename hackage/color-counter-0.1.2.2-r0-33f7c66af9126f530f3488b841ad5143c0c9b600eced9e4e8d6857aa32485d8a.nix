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
    flags = { nocapture = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "color-counter"; version = "0.1.2.2"; };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/color-counter";
      url = "https://bitbucket.org/functinally/color-counter/downloads/color-counter-0.1.2.2.tar.gz";
      synopsis = "Count colors in images";
      description = "This Haskell package contains functions for counting colors in images, either from a file or a camera feed.  The input image must in a standard format like JPEG or PNG.  The analyze function outputs the RGB and CIE-LAB values for each pixel, along with the color detected there.  The tally function outputs a histogram of the colors detected.  The quantize function outputs an image where the pixels have been replaced by the colors detected there.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."friday" or (buildDepError "friday"))
          (hsPkgs."friday-devil" or (buildDepError "friday-devil"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or (buildDepError "v4l2"));
        buildable = true;
        };
      exes = {
        "color-counter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."friday" or (buildDepError "friday"))
            (hsPkgs."friday-devil" or (buildDepError "friday-devil"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or (buildDepError "v4l2"));
          buildable = true;
          };
        };
      };
    }