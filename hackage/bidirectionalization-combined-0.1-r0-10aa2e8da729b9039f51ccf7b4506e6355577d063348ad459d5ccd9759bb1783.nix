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
      identifier = { name = "bidirectionalization-combined"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "kztk@kb.ecei.tohoku.ac.jp";
      author = "Kazutaka Matsuda, Joachim Breitner";
      homepage = "http://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/desc.html";
      url = "";
      synopsis = "Prototype Implementation of Combining Syntatic and Semantic Bidirectionalization (ICFP'10)";
      description = "This is a prototype implementation of the idea presented\nin Combining Syntatic and Semantic Bidirectionalization\nby Janis Voigtlaender, Zhenjiang Hu, Kazutaka Matsuda\nand Meng Wang.\n\nThis package builds two executables to experiment with the system,\na command line program \"b18-combined\" and a CGI based web interface\n\"b18n-combined-cgi\". The latter is also available on\nhttp://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "b18n-combined" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        "b18n-combined-cgi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hint" or (buildDepError "hint"))
            ];
          };
        };
      };
    }