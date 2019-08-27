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
      identifier = { name = "rsagl"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library";
      description = "RSAGL, the RogueStar Animation and Graphics Library,\nwas specifically designed for a computer game called\nroguestar, but effort has been made to make it accessable\nto other projects that might benefit from it.  It includes\nmathematical utilities, a 3D modeling language based on\nparametric surfaces, and an arrow-based FRP framework.\n\nThe git repository is available at <http://www.downstairspeople.org/git/rsagl.git>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."arrows" or (buildDepError "arrows"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."Vec" or (buildDepError "Vec"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."data-memocombinators" or (buildDepError "data-memocombinators"))
          ];
        };
      exes = { "_rsagl_process_colors" = {}; };
      };
    }