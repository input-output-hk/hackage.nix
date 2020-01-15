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
      specVersion = "1.12";
      identifier = { name = "xrefcheck"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Serokell <https://serokell.io>";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Kostya Ivanov, Serokell";
      homepage = "https://github.com/serokell/xrefcheck#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/serokell/xrefcheck#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-options" or (buildDepError "aeson-options"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cmark-gfm" or (buildDepError "cmark-gfm"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fmt" or (buildDepError "fmt"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."loot-prelude" or (buildDepError "loot-prelude"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."o-clock" or (buildDepError "o-clock"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
          (hsPkgs."req" or (buildDepError "req"))
          (hsPkgs."roman-numerals" or (buildDepError "roman-numerals"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.autoexporter or (pkgs.buildPackages.autoexporter or (buildToolDepError "autoexporter")))
          ];
        buildable = true;
        };
      exes = {
        "xrefcheck" = {
          depends = [
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-options" or (buildDepError "aeson-options"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmark-gfm" or (buildDepError "cmark-gfm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."loot-prelude" or (buildDepError "loot-prelude"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."req" or (buildDepError "req"))
            (hsPkgs."roman-numerals" or (buildDepError "roman-numerals"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
            (hsPkgs."xrefcheck" or (buildDepError "xrefcheck"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.autoexporter or (pkgs.buildPackages.autoexporter or (buildToolDepError "autoexporter")))
            ];
          buildable = true;
          };
        };
      tests = {
        "xrefcheck-tests" = {
          depends = [
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-options" or (buildDepError "aeson-options"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmark-gfm" or (buildDepError "cmark-gfm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."loot-prelude" or (buildDepError "loot-prelude"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."req" or (buildDepError "req"))
            (hsPkgs."roman-numerals" or (buildDepError "roman-numerals"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
            (hsPkgs."xrefcheck" or (buildDepError "xrefcheck"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.autoexporter or (pkgs.buildPackages.autoexporter or (buildToolDepError "autoexporter")))
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }