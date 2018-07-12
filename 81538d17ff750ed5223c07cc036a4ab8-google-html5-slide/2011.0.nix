{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "google-html5-slide";
          version = "2011.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "";
        url = "";
        synopsis = "Google HTML5 Slide generator";
        description = "Google HTML5 Slide <https://code.google.com/p/html5slides/> generator\nfor Pandoc documents";
        buildType = "Simple";
      };
      components = {
        exes = {
          "google-html5-slide" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.blaze-html
              hsPkgs.pandoc
              hsPkgs.hamlet
              hsPkgs.shakespeare-css
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }