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
    flags = { cpphs = true; debug = false; enable-cluster-counting = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Agda"; version = "2.5.4.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Agda 2 was originally written by Ulf Norell, partially based on code from Agda 1 by Catarina Coquand and Makoto Takeyama, and from Agdalight by Ulf Norell and Andreas Abel. Agda 2 is currently actively developed mainly by Andreas Abel, Guillaume Allais, Jesper Cockx, Nils Anders Danielsson, Philipp Hausmann, Fredrik Nordvall Forsberg, Ulf Norell, Víctor López Juan, Andrés Sicard-Ramírez, and Andrea Vezzosi. Further, Agda 2 has received contributions by, amongst others, Stevan Andjelkovic, Marcin Benke, Jean-Philippe Bernardy, Guillaume Brunerie, James Chapman, Dominique Devriese, Péter Diviánszki, Olle Fredriksson, Adam Gundry, Daniel Gustafsson, Kuen-Bang Hou (favonia), Patrik Jansson, Alan Jeffrey, Wolfram Kahl, Wen Kokke, Fredrik Lindblad, Francesco Mazzoli, Stefan Monnier, Darin Morrison, Guilhem Moulin, Nicolas Pouillard, Nobuo Yamashita, Christian Sattler, and Makoto Takeyama and many more.";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nThis package includes both a command-line program (agda) and an\nEmacs mode. If you want to use the Emacs mode you can set it up by\nrunning @agda-mode setup@ (see the README).\n\nNote that the Agda package does not follow the package versioning\npolicy, because it is not intended to be used by third-party\npackages.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.filemanip or (pkgs.pkgsBuildBuild.filemanip or (errorHandler.setupDepError "filemanip")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
      ];
    };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."EdisonCore" or (errorHandler.buildDepError "EdisonCore"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."equivalence" or (errorHandler.buildDepError "equivalence"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."geniplate-mirror" or (errorHandler.buildDepError "geniplate-mirror"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
        ] ++ pkgs.lib.optional (flags.enable-cluster-counting) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.4") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0" && (compiler.isGhc && compiler.version.lt "8.4")) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10" && (compiler.isGhc && compiler.version.lt "8.0")) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ [
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ] ++ pkgs.lib.optional (flags.cpphs) (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")));
        buildable = true;
      };
      exes = {
        "agda" = {
          depends = [
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "agda-mode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }