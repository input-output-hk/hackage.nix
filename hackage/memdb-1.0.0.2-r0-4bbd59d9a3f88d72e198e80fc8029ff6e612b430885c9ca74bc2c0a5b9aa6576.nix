{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "memdb"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "2018 Philip Kamenarsky";
      maintainer = "p.kamenarsky@gmail.com";
      author = "Philip Kamenarsky";
      homepage = "https://github.com/pkamenarsky/memdb#readme";
      url = "";
      synopsis = "Efficient in memory indexed database";
      description = "Please see the README on GitHub at <https://github.com/pkamenarsky/memdb#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.vector)
          ];
        libs = [ (pkgs."stdc++") ];
        };
      tests = {
        "memdb-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.memdb)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }