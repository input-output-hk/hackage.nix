{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safepath"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/githubuser/safepath#readme";
      url = "";
      synopsis = "Safe Paths in Haskell";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.validity) ];
        };
      tests = {
        "safepath-doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.safepath) ];
          };
        };
      };
    }