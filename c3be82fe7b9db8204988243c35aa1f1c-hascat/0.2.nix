{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hascat";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Björn Teegen 2006, Florian Micheler 2010";
        maintainer = "fmi@informatik.uni-kiel.de";
        author = "Björn Teegen, Florian Micheler";
        homepage = "";
        url = "";
        synopsis = "Hascat Web Server";
        description = "Hascat Web Server\n\nHow to install:\n\n1. install with cabal-install\n\n2. make a directory where you want the hascat-apps (hasclets) to be installed\n\n3. run\n\n\$ hascat-setup \\<directory\\>\n\n4. in that directory run:\n\n\$ hascat config.xml\n\n\nFor more information check my bachelor thesis:\n\n<http://www.informatik.uni-kiel.de/~fmi/bachelor.pdf>";
        buildType = "Simple";
      };
      components = {
        exes = {
          hascat = {
            depends  = [
              hsPkgs.base
              hsPkgs.hascat-lib
              hsPkgs.hascat-system
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.HaXml
              hsPkgs.haxr
              hsPkgs.HTTP
              hsPkgs.unix
              hsPkgs.html
              hsPkgs.bytestring
              hsPkgs.hascat-setup
            ];
          };
        };
      };
    }