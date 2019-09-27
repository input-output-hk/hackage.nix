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
      identifier = { name = "3d-graphics-examples"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2006      Matthias Reisner;\n© 2012–2015 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Matthias Reisner";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/3d-graphics-examples";
      url = "http://hackage.haskell.org/packages/archive/3d-graphics-examples/0.0.0.2/3d-graphics-examples-0.0.0.2.tar.gz";
      synopsis = "Examples of 3D graphics programming with OpenGL";
      description = "This package demonstrates how to program simple interactive 3D\ngraphics with OpenGL. It contains two programs, which are both\nabout fractals:\n\n[L-systems] generates graphics from Lindenmayer systems\n(L-systems). It defines a language for L-systems as an embedded\nDSL.\n\n[Mountains] uses the generalized Brownian motion to generate\ngraphics that resemble mountain landscapes.\n\nThe original versions of these programs were written by Matthias\nReisner as part of a student project at the Brandenburg\nUniversity of Technology at Cottbus, Germany. Wolfgang Jeltsch,\nwho supervised this student project, is now maintaining these\nprograms.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mountains" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "l-systems" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            ];
          buildable = true;
          };
        };
      };
    }