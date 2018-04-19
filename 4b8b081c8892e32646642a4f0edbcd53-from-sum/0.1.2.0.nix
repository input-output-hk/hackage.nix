{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "from-sum";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/from-sum";
        url = "";
        synopsis = "Canonical fromMaybeM and fromEitherM functions.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        from-sum = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          from-sum-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }