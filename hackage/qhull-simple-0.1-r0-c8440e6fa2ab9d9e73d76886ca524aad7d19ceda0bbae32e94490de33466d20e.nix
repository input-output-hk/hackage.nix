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
      specVersion = "1.4";
      identifier = { name = "qhull-simple"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bindings: 2013 Gard Spreemann. Qhull itself: 1992-2012 C. B. Arber and The Geometry Center, University of Minnesota.";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann";
      homepage = "http://nonempty.org/software/haskell-qhull-simple";
      url = "";
      synopsis = "Simple bindings to Qhull, a library for computing convex hulls";
      description = "Simple bindings to Qhull, a C library (<http://qhull.org>) for computing convex hulls. Currently, only convex hull computation in the @Qt@ and/or @Qx@ modes is supported.\n\nThe Qhull library itself is not included, as I consider it a dependency. Cabal's @--extra-include-dirs@ and @--extra-lib-dirs@ can be used if the Qhull headers and shared objects are not in GCC's search path.\n\nHackage probably fails to build the Haddock documentation since Qhull itself is missing. The\ndocumentation can be viewed at <http://nonempty.org/software/haskell-qhull-simple/>.\n\nQhull itself is copyright 1992-2012 C. B. Arber and The Geometry Center, University of Minnesota.\n\nNotes:\n\n* The current version has only been tested /very lightly/, and only with version 2009.1 of Qhull.\n\n* The API will probably change drastically in future versions, especially to be more flexible with regards to input data formats.\n\nChanges in version 0.1:\n\n* Initial release.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [
          (pkgs."qhull" or (sysDepError "qhull"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ];
        };
      };
    }