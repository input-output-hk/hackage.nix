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
      identifier = { name = "AutoForms"; version = "0.4.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "http://autoforms.sourceforge.net/";
      url = "";
      synopsis = "GUI library based upon generic programming (SYB3)";
      description = "IMPORTANT! Development of AutoForms has stopped. In stead use\nWxGeneric (see\nhttp://lindstroem.wordpress.com/2008/05/03/introducing-wxgeneric/ )\nwhich is based upon AutoForms. Nonetheless, AutoForms may still a good\nresource for ideas.\n\nAutoForms is a library to ease the creation of Graphical User\nInterfaces (GUI). It does this by using generic programming to\nconstruct GUI components.\n\nThe AutoForms user creates an ordinary algebraic data type (ADT),\nwhich should reflect the data model of an application. From this ADT\nAutoForms automatically constructs a GUI component, by using the\nstructure and identifiers of the ADT. To facilitate this construction,\nAutoForms uses the 'Scrap your boilerplate' approach to generic\nprogramming.\n\nThis component can be displayed using WxHaskell or by an AutoForms\ncustom monad called WxM.. The first facilitates that people who\nalready knows WxHaskell quickly will be able to make GUIs. The second\nis our attempt at a more type-safe and easier to use GUI toolkit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."wx" or (buildDepError "wx"))
          (hsPkgs."wxcore" or (buildDepError "wxcore"))
          (hsPkgs."syb-with-class" or (buildDepError "syb-with-class"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }