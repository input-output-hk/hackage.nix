{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "CSPM-CoreLanguage";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
        author = "2010 - 2011 Marc Fontaine";
        homepage = "";
        url = "";
        synopsis = "Definition of a FDR-compatible CSP core-language.";
        description = "This package contains an interface for a CSP core-language.\nIt defines processes, events, event sets, a EDSL for process operations like\nparallel or interleaving.\nThis interface can be used to implement a FDR-2.83 compatible CSPM animator.\nWe use this interface in our tool to connect the functional CSPM-sub-language\nwith core CSP functionality.";
        buildType = "Simple";
      };
      components = {
        CSPM-CoreLanguage = {
          depends  = [ hsPkgs.base ];
        };
      };
    }