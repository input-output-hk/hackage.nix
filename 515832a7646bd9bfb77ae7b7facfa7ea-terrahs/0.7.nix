{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "terrahs";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sergio Costa <skosta@gmail.com>";
        author = "Sergio Costa <skosta@gmail.com>";
        homepage = "http://lucc.ess.inpe.br/doku.php?id=terrahs";
        url = "";
        synopsis = "A library for GIS Programs in Haskell.";
        description = "A software component that enables the development of geographical\napplications in a functional language, using the data handling capabilities\nof TerraLib. TerraLib is a C++ library that supports different spatial\ndatabase management systems, and that includes a large number\nof spatial algorithms.\n\nMore info on package and its features at <http://lucc.ess.inpe.br/doku.php?id=terrahs>";
        buildType = "Simple";
      };
      components = {
        terrahs = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.old-time
          ];
          libs = [ pkgs.terrahsc ];
        };
      };
    }