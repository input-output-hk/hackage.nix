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
      specVersion = "1.2";
      identifier = {
        name = "clash";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010 Christiaan Baaij &\nMatthijs Kooijman";
      maintainer = "christiaan.baaij@gmail.com & matthijs@stdin.nl";
      author = "Christiaan Baaij & Matthijs Kooijman";
      homepage = "http://clash.ewi.utwente.nl/";
      url = "http://github.com/christiaanb/clash/tree/master/cλash";
      synopsis = "CAES Language for Synchronous Hardware (CLaSH)";
      description = "CLaSH is a tool-chain/language to translate subsets of\nHaskell to synthesizable VHDL. It does this by translating\nthe intermediate System Fc (GHC Core) representation to a\nVHDL AST, which is then written to file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ghc)
          (hsPkgs.pretty)
          (hsPkgs.vhdl)
          (hsPkgs.haskell98)
          (hsPkgs.syb)
          (hsPkgs.data-accessor)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.data-accessor-template)
          (hsPkgs.data-accessor-transformers)
          (hsPkgs.prettyclass)
          (hsPkgs.directory)
          (hsPkgs.tfp)
          (hsPkgs.th-lift)
          (hsPkgs.time)
        ];
      };
    };
  }