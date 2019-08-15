{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "refinery"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Reed Mullanix";
      maintainer = "reedmullanix@gmail.com";
      author = "Reed Mullanix";
      homepage = "https://github.com/totbwf/refinery#readme";
      url = "";
      synopsis = "Toolkit for building proof automation systems";
      description = "Please see the README on GitHub at <https://github.com/githubuser/refinery#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.semigroupoids)
          ];
        };
      tests = {
        "refinery-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.refinery)
            (hsPkgs.semigroupoids)
            ];
          };
        };
      };
    }