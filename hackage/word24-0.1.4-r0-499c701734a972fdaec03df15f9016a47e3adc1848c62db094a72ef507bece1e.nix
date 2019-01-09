{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "word24"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "http://inmachina.net/~jwlato/haskell/word24";
      url = "";
      synopsis = "24-bit word and int types for GHC";
      description = "24-bit Word and Int data types.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.haskell98) ] ++ [ (hsPkgs.base) ]; };
      exes = {
        "testWord24" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ] ++ [ (hsPkgs.base) ];
          };
        };
      };
    }