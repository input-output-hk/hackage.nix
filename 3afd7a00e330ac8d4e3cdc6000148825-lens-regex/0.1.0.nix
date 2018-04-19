{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      build-samples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-regex";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Takahiro HIMURA";
        maintainer = "Takahiro HIMURA <taka@himura.jp>";
        author = "Takahiro HIMURA";
        homepage = "https://github.com/himura/lens-regex";
        url = "";
        synopsis = "Lens powered regular expression";
        description = "Lens powered regular expression";
        buildType = "Simple";
      };
      components = {
        lens-regex = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.lens
            hsPkgs.regex-base
            hsPkgs.template-haskell
          ];
        };
        exes = {
          sample = {
            depends  = pkgs.lib.optionals (!(!_flags.build-samples)) [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.lens-regex
              hsPkgs.regex-posix
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.regex-posix
            ];
          };
        };
      };
    }