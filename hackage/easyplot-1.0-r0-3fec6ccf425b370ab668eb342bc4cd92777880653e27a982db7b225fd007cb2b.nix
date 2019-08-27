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
      specVersion = "1.6";
      identifier = { name = "easyplot"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/easyplot";
      url = "";
      synopsis = "A tiny plotting library, utilizes gnuplot for plotting.";
      description = "A tiny plotting library for Haskell, using gnuplot for rendering.\n\nDeveloped and tested using Mac OS X 10.7.3 with gnuplot 4.4 (via MacPorts).\nCompiles using GHC 7.0.4\n\nMake sure gnuplot is in your path and everything should work.\n\nSome sample plots:\n\n> plot X11 \$ Data2D [Title \"Sample Data\"] [] [(1, 2), (2, 4), ...]\n\n> plot X11 \$ Function2D [Title \"Sine and Cosine\"] [] (\\x -> sin x * cos x)\n\n> plot X11 sin\n\n> plot (PNG \"plot.png\") (sin . cos)\n\n> plot X11 \$ Gnuplot2D [Color Blue] [] \"2**cos(x)\"\n\n> plot X11 [ Data2D [Title \"Graph 1\", Color Red] [] [(x, x ** 3) | x <- [-4,-3.9..4]]\n>          , Function2D [Title \"Function 2\", Color Blue] [] (\\x -> negate \$ x ** 2) ]\n\n> plot' [Interactive] X11 \$ Gnuplot3D [Color Magenta] [] \"x ** 2 + y ** 3\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        };
      };
    }