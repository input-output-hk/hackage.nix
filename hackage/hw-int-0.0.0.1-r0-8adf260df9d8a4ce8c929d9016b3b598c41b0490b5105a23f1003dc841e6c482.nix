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
        name = "hw-int";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-int#readme";
      url = "";
      synopsis = "Integers";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-int" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }