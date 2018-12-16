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
      uhc = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Agda";
        version = "2.5.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Andreas Abel, Nils Anders Danielsson, Makoto Takeyama, Catarina Coquand, with contributions by Stevan Andjelkovic, Marcin Benke, Jean-Philippe Bernardy, James Chapman, Jesper Cockx, Dominique Devriese, Peter Divanski, Fredrik Nordvall Forsberg, Olle Fredriksson, Daniel Gustafsson, Philipp Hausmann, Patrik Jansson, Alan Jeffrey, Wolfram Kahl, Fredrik Lindblad, Francesco Mazzoli, Stefan Monnier, Darin Morrison, Guilhem Moulin, Nicolas Pouillard, Andrés Sicard-Ramírez, Andrea Vezzosi and many more.";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nThis package includes both a command-line program (agda) and an\nEmacs mode. If you want to use the Emacs mode you can set it up by\nrunning @agda-mode setup@ (see the README).\n\nNote that the Agda library does not follow the package versioning\npolicy, because it is not intended to be used by third-party\npackages.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-hash)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.EdisonAPI)
          (hsPkgs.EdisonCore)
          (hsPkgs.edit-distance)
          (hsPkgs.equivalence)
          (hsPkgs.filepath)
          (hsPkgs.geniplate-mirror)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.haskeline)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.monadplus)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.parallel)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.xhtml)
        ] ++ pkgs.lib.optionals (flags.uhc) [
          (hsPkgs.shuffle)
          (hsPkgs.uhc-light)
          (hsPkgs.uhc-util)
          (hsPkgs.uulib)
        ]) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.base-orphans)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.void)) ++ [
          (hsPkgs.zlib)
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
        "agda-ghc-names" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.filemanip)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }