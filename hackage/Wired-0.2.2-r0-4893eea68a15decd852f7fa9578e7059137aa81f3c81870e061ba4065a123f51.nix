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
      identifier = { name = "Wired"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Emil Axelsson <emax@chalmers.se>";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "http://www.cs.chalmers.se/~emax/wired/";
      url = "";
      synopsis = "Wire-aware hardware description";
      description = "Wired is an extension to the hardware description library Lava targeting (not\nexclusively) semi-custom VLSI design. A particular aim of Wired is to give the\ndesigner more control over on-chip wires' effects on performance.\n\nThe goal is a system with the following features:\n\n* Convenient circuit description in monadic style.\n\n* Layout/wiring expressed using optional annotations, allowing incremental\nspecification of physical aspects.\n\n* Export designs to several formats:\n\n(1) Lava (for e.g. verification)\n\n(2) Postscript (for visualizing layout and wiring)\n\n(3) Design Exchange Format (for interfacing to standard CAD tools)\n\n* Accurate, wire-aware timing/power analysis within the system.\n\n* Support for modern standard cell libraries.\n\n* Automatic compilation of standard cell libraries.\n\nWe are not very far from this goal. The missing parts are power analysis and\ncell library compilation, and sequential circuits are not yet fully supported.\nAlso, there is virtually no documentation. The best place to look for guidance\nis in the @Examples@ directory. The following thesis\n<http://www.cs.chalmers.se/~emax/documents/PhD_thesis.pdf> gives more\ninformation about the background and some explanation of programming\ntechniques used in Wired. It should also be said that the library is still\nquite unstable and has not yet been tested in any larger scale.\n\nThe standard cell library shipped with Wired (\"Libs.Nangate45.Wired\") is an\nopen-source 45nm library from Nangate (<http://www.nangate.com>) provided for\nthe purposes of testing and exploring EDA flows. It is not intended for\nfabrication. More information is given in the license agreement\nin \"Libs.Nangate45.LICENSE\". If anyone is interested in real cell libraries\n(currently 130nm, 90nm and 65nm from STM), please contact the maintainer of\nthe Wired library.\n\nCurrently, Wired contains its own version of Lava which is a bit different\nfrom the standard version (package @chalmers-lava2000@ on Hackage) To make\nthings more complicated, this version of Lava actually uses the standard\nversion for simulation and verification. Ideally there should only be /one/\nLava library, independent of the Wired package. Hopefully, this will happen in\na not too distant future.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."chalmers-lava2000" or (buildDepError "chalmers-lava2000"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      };
    }