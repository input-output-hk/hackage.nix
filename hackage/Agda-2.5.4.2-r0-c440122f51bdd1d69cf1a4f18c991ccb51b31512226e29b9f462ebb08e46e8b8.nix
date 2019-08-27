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
    flags = { cpphs = false; debug = false; enable-cluster-counting = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Agda"; version = "2.5.4.2"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.filemanip or (pkgs.buildPackages.filemanip or (buildToolDepError "filemanip")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."boxes" or (buildDepError "boxes"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-hash" or (buildDepError "data-hash"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."EdisonCore" or (buildDepError "EdisonCore"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."equivalence" or (buildDepError "equivalence"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."geniplate-mirror" or (buildDepError "geniplate-mirror"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."murmur-hash" or (buildDepError "murmur-hash"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or (buildDepError "uri-encode"))
          ] ++ (pkgs.lib).optional (flags.enable-cluster-counting) (hsPkgs."text-icu" or (buildDepError "text-icu"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.4") (hsPkgs."transformers" or (buildDepError "transformers"))) ++ [
          (hsPkgs."text" or (buildDepError "text"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0" && (compiler.isGhc && (compiler.version).lt "8.4")) (hsPkgs."transformers" or (buildDepError "transformers"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.10" && (compiler.isGhc && (compiler.version).lt "8.0")) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          ]) ++ [
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ] ++ (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")));
        };
      exes = {
        "agda" = {
          depends = [
            (hsPkgs."Agda" or (buildDepError "Agda"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "agda-mode" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }