{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "xleb";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "©2017 Getty Ritter";
        maintainer = "Getty Ritter <xleb@infinitenegativeutility.com>";
        author = "Getty Ritter <xleb@infinitenegativeutility.com>";
        homepage = "https://github.com/aisamanra/xleb";
        url = "";
        synopsis = "A simple monadic language for parsing XML structures.";
        description = "A simple monadic language designed for easily describing and parsing\nXML structures.\n\nThe library in general has a small surface area and should be easy\nto pick up just given the Haddock documentation, but slightly more\ninvolved documentation can be found at\n<https://github.com/aisamanra/xleb the Xleb github page> along with\n<https://github.com/aisamanra/xleb/tree/master/examples some examples>.\n\nPlease report bugs and suggest features at\n<https://github.com/aisamanra/xleb/issues the Xleb issue tracker>.";
        buildType = "Simple";
      };
      components = {
        xleb = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        exes = {
          atom = {
            depends  = [
              hsPkgs.base
              hsPkgs.xleb
              hsPkgs.xml
              hsPkgs.pretty-show
            ];
          };
        };
      };
    }