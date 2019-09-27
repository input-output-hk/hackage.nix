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
      identifier = { name = "WURFL"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, alpheccar";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "alpheccar";
      homepage = "";
      url = "";
      synopsis = "Convert the WURFL file into a Parsec parser";
      description = "The WURLF file format (http://wurfl.sourceforge.net/) is not well adapted to the parsing of the user agent strings. It is useful to manage a database of mobile features.\nThe Convert module in this package (see test.hs) will convert the WURLF tree into another tree that can be used to generate a Parsec parser.\nThe Parsec parser can then be used with WURFLParser to quickly parse an user agent string. The infos extracted from WURLF are defined in WURFLType (MD data type). Nothing\nis preventing the lib from taking into account much more information from the WURLF file.\nThe conversion of wurlf.xml and compilation of the lib are very slow since the generated tree in WurflVar.h is a huge Haskell tree. But, once it is compiled, its use in another project should be\neasy. This module is very experimental.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }