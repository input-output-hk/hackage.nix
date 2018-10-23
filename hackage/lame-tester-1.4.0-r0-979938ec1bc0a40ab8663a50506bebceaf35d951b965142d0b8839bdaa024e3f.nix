{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22.0";
      identifier = {
        name = "lame-tester";
        version = "1.4.0";
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
          (hsPkgs.base-noprelude)
          (hsPkgs.bizzlelude)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.validation)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.bizzlelude)
            (hsPkgs.containers)
            (hsPkgs.lame-tester)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }