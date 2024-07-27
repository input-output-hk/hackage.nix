{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "xrefcheck"; version = "0.1.1"; };
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
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-options" or (errorHandler.buildDepError "aeson-options"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."loot-prelude" or (errorHandler.buildDepError "loot-prelude"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."roman-numerals" or (errorHandler.buildDepError "roman-numerals"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.autoexporter.components.exes.autoexporter or (pkgs.pkgsBuildBuild.autoexporter or (errorHandler.buildToolDepError "autoexporter:autoexporter")))
        ];
        buildable = true;
      };
      exes = {
        "xrefcheck" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-options" or (errorHandler.buildDepError "aeson-options"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."loot-prelude" or (errorHandler.buildDepError "loot-prelude"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."roman-numerals" or (errorHandler.buildDepError "roman-numerals"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."xrefcheck" or (errorHandler.buildDepError "xrefcheck"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.autoexporter.components.exes.autoexporter or (pkgs.pkgsBuildBuild.autoexporter or (errorHandler.buildToolDepError "autoexporter:autoexporter")))
          ];
          buildable = true;
        };
      };
      tests = {
        "xrefcheck-tests" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-options" or (errorHandler.buildDepError "aeson-options"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."loot-prelude" or (errorHandler.buildDepError "loot-prelude"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."roman-numerals" or (errorHandler.buildDepError "roman-numerals"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."xrefcheck" or (errorHandler.buildDepError "xrefcheck"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.autoexporter.components.exes.autoexporter or (pkgs.pkgsBuildBuild.autoexporter or (errorHandler.buildToolDepError "autoexporter:autoexporter")))
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }