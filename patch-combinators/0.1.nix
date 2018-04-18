{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "patch-combinators";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012, Emil Axelsson";
        maintainer = "Emil Axelsson <emax@chalmers.se>";
        author = "Koen Claessen, Emil Axelsson";
        homepage = "";
        url = "";
        synopsis = "A library for patching functions and data structures";
        description = "A library for patching functions and data structures";
        buildType = "Simple";
      };
      components = {
        patch-combinators = {
          depends  = [ hsPkgs.base ];
        };
      };
    }