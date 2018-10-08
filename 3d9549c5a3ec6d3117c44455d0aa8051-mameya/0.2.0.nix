{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mameya";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2018 bururabit";
      maintainer = "bururabit@gmail.com";
      author = "bururabit";
      homepage = "https://github.com/bururabit/mameya#readme";
      url = "";
      synopsis = "Static Website Generator in Haskell";
      description = "Please see the README on GitHub at <https://github.com/bururabit/mameya#readme>";
      buildType = "Simple";
    };
    components = {
      "mameya" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "mameya" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mameya)
          ];
        };
      };
      tests = {
        "mameya-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mameya)
          ];
        };
      };
    };
  }