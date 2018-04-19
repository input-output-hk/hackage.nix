{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      force-has-iconv = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xls";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Harendra Kumar,\n2004-2014 Authors of libxls";
        maintainer = "harendra.kumar@gmail.com";
        author = "Harendra Kumar";
        homepage = "http://github.com/harendra-kumar/xls";
        url = "";
        synopsis = "Parse Microsoft Excel xls files (BIFF/Excel 97-2004)";
        description = "Parse Microsoft Excel spreadsheet files in @.xls@ file format\n(extension '.xls') more specifically known as 'BIFF/Excel 97-2004'.\n\nThe library is based on the C library\n'https://sourceforge.net/projects/libxls'.";
        buildType = "Simple";
      };
      components = {
        xls = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
        exes = {
          xls2csv = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.getopt-generics
              hsPkgs.xls
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.xls
            ];
          };
        };
      };
    }