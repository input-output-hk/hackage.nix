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
      identifier = { name = "activehs"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Haskell code presentation tool";
      description = "ActiveHs is a Haskell source code presentation tool, developed for\neducation purposes.\n\nUser's Guide: <http://pnyf.inf.elte.hu/fp/UsersGuide_en.xml>\n\nDeveloper's Documentation (partial): <http://pnyf.inf.elte.hu/fp/DevDoc_en.xml>\n\nThe software is in prototype phase, although it already served more\nthan 700 000 user requests at Eötvös Loránd University Budapest, Hungary.\n\nNote that this software has many rough edges; you are welcome to\nwork on it!\n\nChanges since 0.2: Correct links and css in documentation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "activehs" = {
          depends = [
            (hsPkgs."hoogle" or (buildDepError "hoogle"))
            (hsPkgs."dia-base" or (buildDepError "dia-base"))
            (hsPkgs."dia-functions" or (buildDepError "dia-functions"))
            (hsPkgs."activehs-base" or (buildDepError "activehs-base"))
            (hsPkgs."data-pprint" or (buildDepError "data-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."simple-reflect" or (buildDepError "simple-reflect"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }