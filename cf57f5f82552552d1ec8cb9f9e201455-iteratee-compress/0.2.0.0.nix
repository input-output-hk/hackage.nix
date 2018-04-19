{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee-compress";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010 (c) Maciej Piechotka";
        maintainer = "uzytkownik2@gmail.com";
        author = "Maciej Piechotka";
        homepage = "";
        url = "";
        synopsis = "An enumerators for compressing and decompressing streams";
        description = "An enumerators for compressing and decompressing streams";
        buildType = "Simple";
      };
      components = {
        iteratee-compress = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.iteratee
            hsPkgs.mtl
          ];
          libs = [ pkgs.z pkgs.bz2 ];
        };
      };
    }