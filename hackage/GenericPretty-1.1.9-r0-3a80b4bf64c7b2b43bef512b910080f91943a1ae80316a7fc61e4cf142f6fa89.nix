{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GenericPretty";
        version = "1.1.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ranca.razvan@gmail.com";
      author = "Razvan Ranca";
      homepage = "https://github.com/HaggisMcMutton/GenericPretty";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "GenericPretty is a Haskell library that supports automatic\nderivation of pretty printing functions on user defined data\ntypes.\n\nThe form of geenrics used is based on that introduced in the paper:\nMagalhaes, Dijkstra, Jeuring, and Loh,\nA Generic Deriving Mechanism for Haskell,\n3'rd ACM Symposium on Haskell, pp. 37-48, September 2010,\n<http://dx.doi.org/10.1145/1863523.1863529>.\nChanges from the original paper in the GHC implementation\nare described here:\n<http://www.haskell.org/haskellwiki/Generics#Changes_from_the_paper>.\n\nThis package requires the use of the new GHC.Generics features\n<http://www.haskell.org/haskellwiki/Generics>, present from GHC 7.2.\nUse of these features is indicated by the DeriveGeneric pragma.\nor the flag -XDeriveGeneric.\n\nPretty printing produces values of type Pretty.Doc, using\nthe Pretty library\n<http://www.haskell.org/ghc/docs/7.0.4/html/libraries/ghc-7.0.4/Pretty.html>.\n\nThe Pretty library plans to incorporate a Style datatype to control details\nof printing (such as line length).  The library MyPretty is provided as a\nthin wrapper around the Pretty library, to support Style related features.\nOnce the Pretty library supports Style, MyPretty will become obsolete and\nbe replaced by Pretty.\n\nThe output provided is a pretty printed version of that provided by\nPrelude.show.  That is, rendering the document provided by this pretty\nprinter yields an output identical to that of Prelude.show, except\nfor extra whitespace.\n\nFor information about the functions exported by the package please see\nthe API linked further down this page.\nFor examples of usage, both basic and more complex see the README file and\nthe haskell source code files in the TestSuite folder, both included in the package.\nFinally for installation instructions also see the README file or this page:\n<http://www.haskell.org/haskellwiki/Cabal/How_to_install_a_Cabal_package>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghc)
        ];
      };
    };
  }