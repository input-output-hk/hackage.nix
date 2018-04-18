{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "template-default";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Daniel Wagner 2012";
        maintainer = "Daniel Wagner <daniel@wagner-home.com>";
        author = "Daniel Wagner";
        homepage = "https://github.com/haskell-pkg-janitors/template-default";
        url = "";
        synopsis = "declaring Default instances just got even easier";
        description = "Declaring instances of the @Default@ type class has always\nbeen pretty mechanical. This package makes the compiler do\nthe mechanical bit.  This has the benefit that even less\nthought is required, and the instance will automatically\nbe corrected when the definition of the data type changes\n(say, to add more arguments to the constructor). Usage\nlooks like this, for example:\n\n> (-# LANGUAGE TemplateHaskell #-)\n> import Data.Default.TH\n> data List a = Nil | Cons a (List a)\n> deriveDefault ''List\n\nThis example results in the following instance:\n\n> instance Data.Default.Default (List a_ad2) where\n>   Data.Default.def = Nil";
        buildType = "Simple";
      };
      components = {
        template-default = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.template-haskell
          ];
        };
      };
    }