{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "html2hamlet";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tanaka.hideyuki@gmail.com";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/tanakh/html2hamlet";
        url = "";
        synopsis = "HTML to Hamlet converter";
        description = "HTML to Hamlet converter";
        buildType = "Simple";
      };
      components = {
        exes = {
          html2hamlet = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hamlet
              hsPkgs.html-conduit
              hsPkgs.http-conduit
              hsPkgs.mtl
              hsPkgs.optparse-declarative
              hsPkgs.regex-tdfa
              hsPkgs.text
              hsPkgs.wl-pprint-text
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }