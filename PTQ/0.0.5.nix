{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      utf8terminal = false;
      utf8cgi = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "PTQ";
          version = "0.0.5";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Masahiro Sakai <masahiro.sakai AT gmail.com>";
        author = "Masahiro Sakai";
        homepage = "http://www.tom.sfc.keio.ac.jp/~sakai/hiki/?hsPTQ";
        url = "";
        synopsis = "An implementation of Montague's PTQ.";
        description = "An implementation of Montague's PTQ (Proper Treatment of Quantification). It translates simple plain English sentences into formulas of intentional logic.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ptq = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.containers
            ] ++ pkgs.lib.optional _flags.utf8terminal hsPkgs.utf8-string;
          };
          ptq.cgi = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.xml
            ] ++ pkgs.lib.optional _flags.utf8cgi hsPkgs.utf8-string;
          };
        };
      };
    }