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
      identifier = { name = "prolog-graph"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "Matthias Bartsch";
      homepage = "https://github.com/Erdwolf/prolog";
      url = "";
      synopsis = "A command line tool to visualize query resolution in Prolog.";
      description = "This package installs the command line tool `hsprolog-graph` that\ngenerates images of resolution trees for given Prolog queries.\n\nSee @hsprolog-graph --help@ for more information on usage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsprolog-graph" = {
          depends = [
            (hsPkgs."prolog" or (buildDepError "prolog"))
            (hsPkgs."prolog-graph-lib" or (buildDepError "prolog-graph-lib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            ];
          };
        };
      };
    }