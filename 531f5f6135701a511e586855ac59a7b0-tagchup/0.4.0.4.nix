{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagchup";
          version = "0.4.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <tagchup@henning-thielemann.de>";
        author = "Henning Thielemann <tagchup@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/tagchup/";
        url = "";
        synopsis = "alternative package for processing of tag soups";
        description = "Tagchup is a package for processing XML, HTML, XHTML documents\nthat can also be malformed.\nIt allows parsing, formatting and retrieval of such document.\nAll functions should be as lazy as possible.\n\nI use a custom data structure based on types from xml-basic\nfor easy interchange with the wraxml package.\n\nIts lazy monadic parser should be more comprehensible and easier to extend\nthan the one of tagsoup-0.6.\nIt also handles XML processing instructions and CDATA sections correctly.\n\nThe name Tagchup resembles Ketchup.";
        buildType = "Simple";
      };
      components = {
        tagchup = {
          depends  = [
            hsPkgs.xml-basic
            hsPkgs.transformers
            hsPkgs.explicit-exception
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-accessor
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        exes = {
          tagchuptest = {};
          tagchupspeed = {
            depends  = pkgs.lib.optional _flags.buildtests hsPkgs.old-time;
          };
          validate-tagchup = {};
          escape-html = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.hxt;
          };
          strip-html = {};
        };
      };
    }