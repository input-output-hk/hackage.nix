{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "CSPM-CoreLanguage";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
        author = "2010 - 2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
        homepage = "";
        url = "";
        synopsis = "Definition of a CSP core-language.";
        description = "This package contains an interface for the CSP core-language.\nIt defines processes, events, event sets, and a domain specific language\nfor process operations like parallel or interleaving processes.";
        buildType = "Simple";
      };
      components = {
        CSPM-CoreLanguage = {
          depends  = [ hsPkgs.base ];
        };
      };
    }