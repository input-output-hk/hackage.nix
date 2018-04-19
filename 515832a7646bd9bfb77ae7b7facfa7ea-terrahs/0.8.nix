{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "terrahs";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Sergio Costa <skosta@gmail.com>";
        author = "Sergio Costa <skosta@gmail.com>";
        homepage = "http://lucc.ess.inpe.br/doku.php?id=terrahs";
        url = "";
        synopsis = "A Haskell GIS Programming Environment";
        description = "We have developed TerraHS, a software component that enables the development of geographical applications in a functional language, using the data handling capabilities of TerraLib. TerraLib is a C++ library that supports different spatial database management systems, and that includes a large number of spatial algorithms. As a result, we get a combination of the good features of both programming paradigms.\nMore info on package and its features at <http://www.haskell.org/haskellwiki/TerraHS>";
        buildType = "Simple";
      };
      components = {
        terrahs = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.old-time
            hsPkgs.base
          ];
          libs = [
            pkgs.terralib4c
            pkgs.translib
          ];
        };
      };
    }