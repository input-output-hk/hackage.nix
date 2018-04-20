{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hist-pl";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/hist-pl/tree/master/umbrella";
        url = "";
        synopsis = "Umbrella package for the historical dictionary of Polish";
        description = "The package provides a tool for creating and searching the\nhistorical dictionary of Polish.";
        buildType = "Simple";
      };
      components = {
        hist-pl = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.hist-pl-lexicon
            hsPkgs.hist-pl-transliter
            hsPkgs.morfeusz
          ];
        };
        exes = {
          hist-pl = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.aeson-pretty
              hsPkgs.pipes
              hsPkgs.polimorf
              hsPkgs.hist-pl-lexicon
              hsPkgs.hist-pl-fusion
              hsPkgs.hist-pl-dawg
              hsPkgs.hist-pl-lmf
            ];
          };
        };
      };
    }