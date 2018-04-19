{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polh-lexicon";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/synat";
        url = "";
        synopsis = "Interface to a historical dictionary of Polish";
        description = "Interface to a historical dictionary of Polish.";
        buildType = "Simple";
      };
      components = {
        polh-lexicon = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
            hsPkgs.polysoup
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        exes = {
          polh-binarize = {};
          polh-show = {};
        };
      };
    }