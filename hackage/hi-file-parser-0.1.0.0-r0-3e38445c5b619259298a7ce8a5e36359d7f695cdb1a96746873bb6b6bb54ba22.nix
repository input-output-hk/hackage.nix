{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hi-file-parser"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Hussein Ait-Lahcen";
      homepage = "https://github.com/commercialhaskell/stack#readme";
      url = "";
      synopsis = "Parser for GHC's hi files";
      description = "Please see the README on Github at <https://github.com/commercialhaskell/stack/blob/master/subs/hi-file-parser/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.rio)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "hi-file-parser-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hi-file-parser)
            (hsPkgs.hspec)
            (hsPkgs.rio)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }