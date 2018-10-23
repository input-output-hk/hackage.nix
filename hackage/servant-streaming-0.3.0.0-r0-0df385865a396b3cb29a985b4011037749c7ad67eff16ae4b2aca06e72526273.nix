{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-streaming";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-streaming#readme";
      url = "";
      synopsis = "Servant combinators for the 'streaming' package";
      description = "This package defines the 'StreamBody' and 'StreamResponse' combinators for use with the <https://hackage.haskell.org/package/streaming streaming> package.";
      buildType = "Simple";
    };
    components = {
      "servant-streaming" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.servant)
            (hsPkgs.servant-streaming)
          ];
        };
      };
    };
  }