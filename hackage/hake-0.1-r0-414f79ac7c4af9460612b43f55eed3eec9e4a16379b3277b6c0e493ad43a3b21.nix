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
      identifier = { name = "hake"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/hake/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hake-0.0.tar.gz";
      synopsis = "ruby : rake = haskell : hake";
      description = "Like ruby's rake, hake have Hakefile which is Haskell source.\n\nAnd Hakefile is like rake's Rakefile, and make's Makefile.\n\nHakefile is just Haskell source code,\nthen you can use all Haskell features.\n\n> import Development.Hake\n> hake_tree = [\n>\n>  dflt\t[ \"greeting\" ]\n>  ,\n>  file\t( [ \"greeting\", \"greeting.log\" ], [ \"hello.o\", \"good-bye.o\" ] ,\n> \t\t[ \"linker -o greeting hello.o good-bye.o\" ] )\n>  ,\n>  rule\t( \".o\", \".sfx1\",\n> \t\t\\t s -> [ \"compiler1 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  rule\t( \".o\", \".sfx2\",\n> \t\t\\t s -> [ \"compiler2 \" ++ s ++ \" -o \" ++ t ] )\n>  ,\n>  task\t( \"clean\" , [ \"rm -f *.o greeting greeting.log\" ] )\n>\n>  ]\n>\n> main = hake hake_tree";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "hake" = {
          depends = [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."yjtools" or (buildDepError "yjtools"))
            ];
          };
        };
      };
    }