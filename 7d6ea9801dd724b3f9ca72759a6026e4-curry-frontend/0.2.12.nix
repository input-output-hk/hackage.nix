{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-syb = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "curry-frontend";
          version = "0.2.12";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Björn Peemöller";
        author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
        homepage = "http://www.curry-language.org";
        url = "";
        synopsis = "Compile the functional logic language Curry to several\nintermediate formats";
        description = "The Curry Frontend consists of the executable program \"cymake\".\nIt is used by various backends to compile Curry programs to\nan internal representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/~lux/curry/>)";
        buildType = "Simple";
      };
      components = {
        curry-frontend = {
          depends  = [ hsPkgs.filepath ];
        };
        exes = {
          cymake = {
            depends  = [
              hsPkgs.curry-base
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.pretty
            ] ++ (if _flags.split-syb
              then [ hsPkgs.base hsPkgs.syb ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }