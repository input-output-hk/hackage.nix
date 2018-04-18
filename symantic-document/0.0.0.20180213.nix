{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "symantic-document";
          version = "0.0.0.20180213";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
        author = "Julien Moutinho <julm+symantic@autogeree.net>";
        homepage = "";
        url = "";
        synopsis = "Document symantics.";
        description = "Symantics for generating documents.";
        buildType = "Simple";
      };
      components = {
        symantic-document = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }