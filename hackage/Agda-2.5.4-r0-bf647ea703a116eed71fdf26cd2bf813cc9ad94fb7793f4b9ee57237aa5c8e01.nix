{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cpphs = true;
      debug = false;
      enable-cluster-counting = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Agda";
        version = "2.5.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Agda 2 was originally written by Ulf Norell, partially based on code from Agda 1 by Catarina Coquand and Makoto Takeyama, and from Agdalight by Ulf Norell and Andreas Abel. Agda 2 is currently actively developed mainly by Andreas Abel, Guillaume Allais, Jesper Cockx, Nils Anders Danielsson, Philipp Hausmann, Fredrik Nordvall Forsberg, Ulf Norell, Víctor López Juan, Andrés Sicard-Ramírez, and Andrea Vezzosi. Further, Agda 2 has received contributions by, amongst others, Stevan Andjelkovic, Marcin Benke, Jean-Philippe Bernardy, Guillaume Brunerie, James Chapman, Dominique Devriese, Péter Diviánszki, Olle Fredriksson, Adam Gundry, Daniel Gustafsson, Kuen-Bang Hou (favonia), Patrik Jansson, Alan Jeffrey, Wolfram Kahl, Wen Kokke, Fredrik Lindblad, Francesco Mazzoli, Stefan Monnier, Darin Morrison, Guilhem Moulin, Nicolas Pouillard, Nobuo Yamashita, Christian Sattler, and Makoto Takeyama and many more.";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nThis package includes both a command-line program (agda) and an\nEmacs mode. If you want to use the Emacs mode you can set it up by\nrunning @agda-mode setup@ (see the README).\n\nNote that the Agda package does not follow the package versioning\npolicy, because it is not intended to be used by third-party\npackages.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-hash)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.EdisonCore)
          (hsPkgs.edit-distance)
          (hsPkgs.equivalence)
          (hsPkgs.filepath)
          (hsPkgs.geniplate-mirror)
          (hsPkgs.gitrev)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.haskeline)
          (hsPkgs.ieee754)
          (hsPkgs.mtl)
          (hsPkgs.murmur-hash)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
        ] ++ pkgs.lib.optional (flags.enable-cluster-counting) (hsPkgs.text-icu)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.4") (hsPkgs.transformers)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0" && (compiler.isGhc && compiler.version.lt "8.4")) (hsPkgs.transformers)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10" && (compiler.isGhc && compiler.version.lt "8.0")) (hsPkgs.transformers)) ++ [
          (hsPkgs.zlib)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ] ++ pkgs.lib.optional (flags.cpphs) (hsPkgs.buildPackages.cpphs);
      };
      exes = {
        "agda" = {
          depends = [
            (hsPkgs.Agda)
            (hsPkgs.base)
          ];
        };
        "agda-mode" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }