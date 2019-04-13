{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "crc32c"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/crc32c#readme";
      url = "";
      synopsis = "Haskell bindings for crc32c";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = [ (pkgs."stdc++") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      tests = {
        "crc32c-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crc32c)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            ];
          };
        };
      };
    }