{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "indentation-core";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>\nAleksey Kliger <aleksey@lambdageek.org>";
        author = "Michael D. Adams <http://michaeldadams.org/>";
        homepage = "https://bitbucket.org/adamsmd/indentation";
        url = "";
        synopsis = "Indentation sensitive parsing combinators core library";
        description = "Indentation sensitive parsing combinators core library\n\nThis is the core for the indentation package.\nFor common use, consider one of the front-ends:\nindentation-parsec or indentation-trifecta.  For\nboth, or for backward compatability, install\nindentation.";
        buildType = "Simple";
      };
      components = {
        indentation-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }