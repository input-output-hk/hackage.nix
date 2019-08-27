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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "wxFruit"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Antony Courtney, Bart Robinson, Paul Hudak";
      homepage = "http://www.haskell.org/haskellwiki/WxFruit";
      url = "";
      synopsis = "An implementation of Fruit using wxHaskell.";
      description = "This is an updated version of the original wxFruit.\n\nwxFruit isn't maintained by original authors, and Haskell.org. There\nare a few forked versions of wxFruit now. One extension is shelarcy's\nYaPan\n(<http://sourceforge.net/project/showfiles.php?group_id=168626&package_id=199138>).\nIt added Menu and OpenGL support. And another one is Remi Turk's Juicy\nFruit\n(<http://www.cs.uu.nl/wiki/pub/Afp0607/DomainSpecificLanguages/fruit.pdf>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
        };
      exes = {
        "paddle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          };
        };
      };
    }