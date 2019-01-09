{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "memo-ptr"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andraz@bajt.me";
      author = "Andraz Bajt";
      homepage = "";
      url = "";
      synopsis = "Pointer equality memoization";
      description = "This is a Haskell library that provides a memoizing combinator that is fully general and fast by relying on pointer equality. This means it is useful if you are calling the same function with the same heap object. See README.md for an example.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }