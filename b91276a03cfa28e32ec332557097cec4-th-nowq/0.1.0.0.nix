{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-nowq";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/th-nowq#readme";
        url = "";
        synopsis = "Template Haskell splice that expands to current time";
        description = "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.";
        buildType = "Simple";
      };
      components = {
        th-nowq = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.time
          ];
        };
        tests = {
          readme = {
            depends  = [
              hsPkgs.base
              hsPkgs.th-nowq
            ];
          };
        };
      };
    }