{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-flatten"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016 Daniel Choi";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/ascii-flatten";
      url = "";
      synopsis = "Flattens European non-ASCII characaters into ASCII";
      description = "Flattens European non-ASCII characaters into ASCII";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = {
        "ascii-flatten" = {
          depends = [ (hsPkgs.base) (hsPkgs.ascii-flatten) (hsPkgs.text) ];
          };
        };
      };
    }