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
      identifier = { name = "wallpaper"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Jeffrey Rosenbluth";
      maintainer = "jeffrey.rosenbluth@gmail.com";
      author = "Jeffrey Rosenbluth";
      homepage = "https://github.com/jeffreyrosenbluth/wallpaper#readme";
      url = "";
      synopsis = "A library and executable for creating\nwallpaper, frieze, and rosette patterns.";
      description = "@wallpaper@ provides the tools needed to make your own\nwallpapers, friezes and rosettes as described in Frank A.\nFarris's beuatiful book\n<http://press.princeton.edu/titles/10435.html Creating Symmetry>.\nFollowing Farris we use the\n<https://en.wikipedia.org/wiki/Domain_coloring domain coloring>\nalgorithm to create recipes that convert an arbitrary image\nto a pattern. For example, using the this image\n\n<<https://raw.githubusercontent.com/jeffreyrosenbluth/wallpaper/master/examples/rose_small.png>>\n\nWe can make\n\n<<https://raw.githubusercontent.com/jeffreyrosenbluth/wallpaper/master/examples/beach_morph.png>>\n\nFor maximum flexibily the @wallpaper@ library provides an\nEDSL for their creation,\nalternatively the @wallpaper@ and @rosette@ executables\ncan be used with a yaml file to create a large variety of\npatterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "wallpaper" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wallpaper" or (buildDepError "wallpaper"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        "rosette" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wallpaper" or (buildDepError "wallpaper"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "wallpaper-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wallpaper" or (buildDepError "wallpaper"))
            ];
          buildable = true;
          };
        };
      };
    }