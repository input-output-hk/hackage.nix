{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hist-pl-lexicon";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/hist-pl/tree/master/lexicon";
        url = "";
        synopsis = "A binary representation of the historical dictionary of Polish";
        description = "The library provides a binary representation of the historical\ndictionary of Polish and language markup format (LMF) parsing\nutilities which allow to translate the original LMF representation\nof the dictionary to the binary form.";
        buildType = "Simple";
      };
      components = {
        hist-pl-lexicon = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
            hsPkgs.polysoup
            hsPkgs.dawg
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        exes = {
          hist-pl-binarize = {};
          hist-pl-show = {};
        };
      };
    }