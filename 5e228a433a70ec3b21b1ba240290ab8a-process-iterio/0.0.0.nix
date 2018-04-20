{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "process-iterio";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Fitzgerald <garious@gmail.com>";
        author = "Greg Fitzgerald <garious@gmail.com>";
        homepage = "https://github.com/garious/process-iterio";
        url = "";
        synopsis = "IterIO Process Library";
        description = "IterIO combinators for the Process library";
        buildType = "Simple";
      };
      components = {
        process-iterio = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.iterIO
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.cpphs
          ];
        };
        tests = {
          Test = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.iterIO
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.cpphs
            ];
          };
        };
      };
    }