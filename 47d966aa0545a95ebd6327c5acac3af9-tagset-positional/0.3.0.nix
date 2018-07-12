{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagset-positional";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/tagset-positional";
        url = "";
        synopsis = "Positional tags and tagsets";
        description = "The library provides printing and parsing functions for positional\ntags and tagsets.";
        buildType = "Simple";
      };
      components = {
        "tagset-positional" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
          ];
        };
      };
    }