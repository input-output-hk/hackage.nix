{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "hw-string-parse";
        version = "0.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-string-parse#readme";
      url = "";
      synopsis = "String parser";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-string-parse" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "hw-string-parse-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hw-string-parse)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }