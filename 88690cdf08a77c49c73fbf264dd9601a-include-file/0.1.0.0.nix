{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "include-file";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Inclusion of files in executables at compile-time.";
        description = "Inclusion of files in source code via Template Haskell.\n\nWhen distributing executables, sometimes it is required\nto attach some other resources in files. Using this library\n(together with the TemplateHaskell extension) you avoid this\nproblem by including those files inside the executable at\ncompile time.";
        buildType = "Custom";
      };
      components = {
        include-file = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.template-haskell
          ];
        };
        tests = {
          include-file-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.include-file
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          include-file-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.include-file
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }