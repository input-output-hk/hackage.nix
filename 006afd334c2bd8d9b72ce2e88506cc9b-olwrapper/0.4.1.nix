{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "olwrapper";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tomnobleman@gmail.com";
        author = "Thomas Edelmann";
        homepage = "";
        url = "";
        synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
        description = "Haskell OpenLayers Wrapper\n\n* the library is also the tutorial\n\n* <http://permalink.obvsg.at/AC12315460 Bib>\n\n* <http://www.edelapps.com/olwrapper Test-Tutorial-Website>";
        buildType = "Simple";
      };
      components = {
        olwrapper = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.fay
            hsPkgs.fay-text
            hsPkgs.fay-jquery
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.snaplet-fay
            hsPkgs.snap-loader-static
            hsPkgs.snap-loader-dynamic
          ];
        };
        exes = {
          olwrapper = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.fay
              hsPkgs.fay-text
              hsPkgs.fay-jquery
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.snaplet-fay
              hsPkgs.snap-loader-static
            ] ++ pkgs.lib.optional _flags.development hsPkgs.snap-loader-dynamic;
          };
        };
      };
    }