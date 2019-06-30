{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hrfsize"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dias Kozhabay <librerush@tutanota.com>";
      author = "Dias Kozhabay <librerush@tutanota.com>";
      homepage = "https://github.com/librerush/hrfsize#readme";
      url = "";
      synopsis = "File size in human readable format";
      description = "Simple Haskell library for determining size of file in human readable format";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "hrfsize-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.process)
            (hsPkgs.hrfsize)
            ];
          };
        };
      };
    }