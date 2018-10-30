{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jump";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Commercial Haskell SIG (primary: Michael Snoyman)";
      homepage = "http://github.com/commercialhaskell/jump#readme";
      url = "";
      synopsis = "Nothing to see here, move along";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "jump-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jump)
            (hsPkgs.hspec)
          ];
        };
        "jump-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jump)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }