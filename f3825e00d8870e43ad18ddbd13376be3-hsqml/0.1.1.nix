{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2012 Robin KAY";
        maintainer = "komadori@gekkou.co.uk";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/";
        url = "";
        synopsis = "Haskell binding for Qt Quick";
        description = "A Haskell binding for Qt Quick.\nGeneral documentation is present in the 'Graphics.QML' module.";
        buildType = "Custom";
      };
      components = {
        hsqml = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.network
            hsPkgs.text
            hsPkgs.tagged
            hsPkgs.transformers
          ];
          libs = pkgs.lib.optionals system.isWindows [
            pkgs.QtCore4
            pkgs.QtGui4
            pkgs.QtDeclarative4
            pkgs."stdc++"
          ];
        };
        tests = {
          hsqml-test1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.hsqml
            ];
          };
        };
      };
    }