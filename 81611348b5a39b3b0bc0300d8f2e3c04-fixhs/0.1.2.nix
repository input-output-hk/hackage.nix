{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      with-fix40 = true;
      with-fix41 = true;
      with-fix42 = true;
      with-fix43 = false;
      with-fix44 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixhs";
          version = "0.1.2";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Arvin Moezzi";
        author = "Arvin Moezzi";
        homepage = "http://github.com/urv/fixhs";
        url = "";
        synopsis = "FIX (co)parser";
        description = "Financial Information eXchange (FIX) protocol (co)parser";
        buildType = "Simple";
      };
      components = {
        fixhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.MissingH
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.attoparsec-enumerator
            hsPkgs.enumerator
            hsPkgs.old-time
            hsPkgs.network
            hsPkgs.HaXml
            hsPkgs.deepseq
            hsPkgs.QuickCheck
            hsPkgs.parallel
            hsPkgs.text
            hsPkgs.dlist
          ];
        };
        exes = {
          fix-generator = {
            depends  = [
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.MissingH
              hsPkgs.old-time
              hsPkgs.dlist
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.deepseq
              hsPkgs.text
              hsPkgs.bytestring
            ];
          };
        };
      };
    }