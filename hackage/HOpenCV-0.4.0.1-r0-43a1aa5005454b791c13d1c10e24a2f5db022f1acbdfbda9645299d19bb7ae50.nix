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
      identifier = { name = "HOpenCV"; version = "0.4.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binding for the OpenCV computer vision library";
      description = "Initial version with very limited bindings to OpenCV 2.0. (See: <http://opencv.willowgarage.com/wiki/Welcome>)\n\nFor a functional interface to this library, see the package \"cv-combinators\".\n\nOnline module documentation, if not build below, can be found at <http://www.ee.bgu.ac.il/~noamle/>.\n\n/Installation/\n\nYou must install OpenCV (development packages) prior to installing this package. Currently only tested on Ubuntu Linux, but should work on most linux distributions. For OpenCV installation on other *nix platforms, see <http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.0/>\n\nOn /Ubuntu/ systems, the appropriate version of OpenCV can be installed by:\n\n> sudo apt-get install libcv-dev libhighgui-dev libcvaux-dev\n\nYou should then have libcv4 and libhighgui4 installed automatically too.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ];
        pkgconfig = [ (pkgconfPkgs."opencv" or (pkgConfDepError "opencv")) ];
        };
      exes = {
        "cannyVideo" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          pkgconfig = [ (pkgconfPkgs."opencv" or (pkgConfDepError "opencv")) ];
          };
        };
      };
    }