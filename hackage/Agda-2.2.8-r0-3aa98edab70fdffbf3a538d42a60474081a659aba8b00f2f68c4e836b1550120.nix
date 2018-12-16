{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { use-locale = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Agda";
        version = "2.2.8";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Nils Anders Danielsson, Catarina Coquand, Makoto Takeyama, Andreas Abel, Darin Morrison...";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nNote that if you want to use the command-line program (agda), then\nyou should also install the Agda-executable package. The Agda\npackage includes an Emacs mode for Agda, but you need to set up the\nEmacs mode yourself (for instance by running @agda-mode setup@; see\nthe README).\n\nNote also that this library does not follow the package versioning\npolicy, because the library is only intended to be used by the Emacs\nmode and the Agda-executable package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.haskell-src)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.haskeline)
          (hsPkgs.xhtml)
          (hsPkgs.syb)
          (hsPkgs.Cabal)
        ] ++ (if flags.use-locale
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.utf8-string)
          ]);
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "agda-mode" = {
          depends = [
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
          ] ++ (if flags.use-locale
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.utf8-string)
            ]);
        };
      };
    };
  }