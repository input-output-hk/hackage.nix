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
      identifier = { name = "cakyrespa"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iocikun juj <PAF01143@nifty.ne.jp>";
      author = "iocikun juj <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/myblog/cakyrespa.html";
      url = "";
      synopsis = "run turtle like LOGO with lojban";
      description = "run turtle like LOGO with lojban\n\nThis is alpha version.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cakyrespa" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lojbanParser" or (buildDepError "lojbanParser"))
            (hsPkgs."gluturtle" or (buildDepError "gluturtle"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."yjsvg" or (buildDepError "yjsvg"))
            ];
          buildable = true;
          };
        };
      };
    }