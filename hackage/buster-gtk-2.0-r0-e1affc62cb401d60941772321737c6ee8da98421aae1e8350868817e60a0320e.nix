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
      specVersion = "0";
      identifier = { name = "buster-gtk"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "2009 Renaissance Computing Institute";
      maintainer = "Jeff Heard <jeff@renci.org>";
      author = "Jeff Heard";
      homepage = "http://vis.renci.org/jeff/buster";
      url = "";
      synopsis = "Almost but not quite entirely unlike FRP";
      description = "Buster is best described by the following blog post: http:\\/\\/vis.renci.org\\/jeff\\/2009\\/03\\/31\\/almost-but-not-quite-entirely-like-frp\\/\n\nIt is an engine for orchestrating large, complex, and multifaceted applications by couching them in terms of time, events, a bus,\nbehaviours, and widgets.  Time is continuous and infininte.  Events are discrete and exist for a particular time.  The bus is a\ndiscrete sample of time made available to behaviours. Behaviours are continuous and exist for all time, but sample time via\nthe bus.  They filter Events to determine what is on the bus at future times.  Widgets are input-only objects that sample the\noutside world and assign events to discrete portions of time.\n\nBuster is designed to be flexible, with a flexible event model and the ability to add custom data to events, and designed to be\nhigh performance.  It is simple to integrate with Gtk while at the same time able to handle other kinds of resources, like files\nand sockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."buster" or (buildDepError "buster"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          ];
        };
      };
    }