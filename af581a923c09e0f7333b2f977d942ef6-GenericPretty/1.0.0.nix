{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GenericPretty";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ranca.razvan@gmail.com";
        author = "Razvan Ranca";
        homepage = "https://github.com/HaggisMcMutton/GenericPretty";
        url = "";
        synopsis = "A generic, derivable, haskell pretty printer.";
        description = "GenericPretty is a haskell library that provides support for automatic\nderivation of pretty printing functions on user defined data types.\nThe Pretty library <http://www.haskell.org/ghc/docs/7.0.4/html/libraries/ghc-7.0.4/Pretty.html>\nis used underneath, the work is done over 'Pretty.Doc' types.\n\nThe output provided by the library functions is identical to that of Prelude.show,\nexcept it has extra whitespace.\n\nThis requires the use of the new GHC.Generics features: <http://www.haskell.org/haskellwiki/Generics>.\nThese seem to be present in the GHC HEAD development snapshots >= 7.1.20110601.\n\nThe Generics used are based on those described in the paper \"A Generic Deriving Mechanism for Haskell\" :\n<http://dreixel.net/research/pdf/gdmh.pdf> . The changes from the original paper on the ghc implementation\nare described here: <http://www.haskell.org/haskellwiki/Generics#Changes_from_the_paper>.\n\nFor more info and examples of usage please see the README file included  in the package\nand the API at <http://haggismcmutton.github.com/GenericPretty/>";
        buildType = "Simple";
      };
      components = {
        "GenericPretty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.ghc
          ];
        };
      };
    }