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
      identifier = { name = "lojysamban"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "Prolog with lojban";
      description = "Prolog with lojban\n\n> lojysamban example/pendo.jbo\n> .i ma pendo la .ualeis.\n> .i la gromit\n> .i co'o\n>\n> lojysamban example/gugde.jbo\n> .i alabam. bu toldu'o misisip. bu boi joji'as. bu boi tenesis. bu boi florid. bu\n> .i tu'e alabam bu du lo kambla .ije joji'as. bu du lo kamxu'e .ije misisip bu\n> du lo kamxu'e .ije tenesis bu du lo kamri'o .ije florid bu du lo kamri'o tu'u\n> .ija tu'e alabam bu du lo kamri'o .ife joji'as bu du lo kamxu'e ...\n> .i co'o\n>\n> lojysamban example/patfu.jbo\n> .i ma dzena la jon.bois.jr.\n> .i la jon.bois.sr .a la zeb\n> .i co'o\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lojysamban" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lojbanParser" or (buildDepError "lojbanParser"))
            ];
          };
        };
      };
    }