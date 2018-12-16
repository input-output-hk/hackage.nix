{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { epic = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Agda";
        version = "2.4.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Nils Anders Danielsson, Andreas Abel, Makoto Takeyama, Catarina Coquand, with contributions by Stevan Andjelkovic, Marcin Benke, Jean-Philippe Bernardy, James Chapman, Dominique Devriese, Peter Divanski, Fredrik Nordvall Forsberg, Olle Fredriksson, Daniel Gustafsson, Alan Jeffrey, Fredrik Lindblad, Guilhem Moulin, Nicolas Pouillard, Andrés Sicard-Ramírez and many more.";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nThis package includes both a command-line program (agda) and an\nEmacs mode. If you want to use the Emacs mode you can set it up by\nrunning @agda-mode setup@ (see the README).\n\nNote that the Agda library does not follow the package versioning\npolicy, because it is not intended to be used by third-party\npackages.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.haskeline)
          (hsPkgs.data-hash)
          (hsPkgs.xhtml)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.geniplate)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.strict)
          (hsPkgs.STMonadTrans)
          (hsPkgs.equivalence)
          (hsPkgs.boxes)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (flags.epic) (hsPkgs.epic)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ (if compiler.isGhc && compiler.version.lt "7.6"
          then [
            (hsPkgs.old-time)
            (hsPkgs.directory)
          ]
          else [
            (hsPkgs.time)
            (hsPkgs.directory)
          ]);
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
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
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }