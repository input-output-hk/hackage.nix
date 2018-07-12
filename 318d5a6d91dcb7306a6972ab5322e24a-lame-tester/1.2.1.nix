{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16.0";
        identifier = {
          name = "lame-tester";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason.bertsche@gmail.com";
        author = "Jason Bertsche";
        homepage = "http://github.com/TheBizzle";
        url = "";
        synopsis = "A strange and unnecessary selective test-running library";
        description = "A strange and unnecessary selective test-running library";
        buildType = "Simple";
      };
      components = {
        "lame-tester" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.validation
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lame-tester
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }