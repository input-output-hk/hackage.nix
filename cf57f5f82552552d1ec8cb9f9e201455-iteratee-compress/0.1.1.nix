{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee-compress";
          version = "0.1.1";
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
        "iteratee-compress" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.iteratee
            hsPkgs.monads-fd
          ];
          libs = [ pkgs.z ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }