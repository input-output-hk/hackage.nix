{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zim-parser";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) 2015 Robbin C.";
        maintainer = "Robbin C. <robbinch33@gmail.com>";
        author = "Robbin C. <robbinch33@gmail.com>";
        homepage = "https://github.com/robbinch/zim-parser#readme";
        url = "";
        synopsis = "Read and parse ZIM files";
        description = "zim-parser is a library to read and parse ZIM (http://openzim.org) files.\nZiM files contain offline web content (eg. Wikipedia) which can be browsed\nlocally without an Internet connection.";
        buildType = "Simple";
      };
      components = {
        zim-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.binary-conduit
            hsPkgs.lzma-conduit
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.resourcet
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.binary-conduit
              hsPkgs.lzma-conduit
              hsPkgs.hspec
            ];
          };
        };
      };
    }