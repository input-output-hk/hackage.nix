{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "html2hamlet";
          version = "0.2.0";
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
              hsPkgs.text
              hsPkgs.blaze-builder
              hsPkgs.hamlet
              hsPkgs.xmlhtml
              hsPkgs.cmdargs
              hsPkgs.http-conduit
              hsPkgs.network
            ];
          };
        };
      };
    }