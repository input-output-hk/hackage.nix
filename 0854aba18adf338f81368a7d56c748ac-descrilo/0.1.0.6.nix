{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "descrilo";
          version = "0.1.0.6";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013-2017 Marcelo Garlet Millani";
        maintainer = "marcelogmillani@gmail.com";
        author = "Marcelo Garlet Millani";
        homepage = "";
        url = "";
        synopsis = "Loads a list of items with fields";
        description = "Loads a INI-like file as a list of 'Description's, allowing repeated elements.";
        buildType = "Simple";
      };
      components = {
        descrilo = {
          depends  = [ hsPkgs.base ];
        };
      };
    }