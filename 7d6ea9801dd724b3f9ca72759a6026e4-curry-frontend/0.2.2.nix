{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "curry-frontend";
          version = "0.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Holger Siegel";
        author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "Compile the functional logic language Curry to several intermediate formats";
        description = "The Curry Frontend consists of the executable program \"cymake\".\nIt is used by various backends to compile Curry programs to\nan internal representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/~lux/curry/>)";
        buildType = "Simple";
      };
      components = {
        exes = {
          cymake = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
            ];
          };
        };
      };
    }