{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inline-c-cpp";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete Corporation";
        maintainer = "francesco@fpcomplete.com";
        author = "Francesco Mazzoli";
        homepage = "";
        url = "";
        synopsis = "Lets you embed C++ code into Haskell.";
        description = "Utilities to inline C++ code into Haskell using inline-c.  See\ntests for example on how to build.";
        buildType = "Simple";
      };
      components = {
        "inline-c-cpp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.inline-c
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.inline-c-cpp
            ];
            libs = [ pkgs."stdc++" ];
          };
        };
      };
    }