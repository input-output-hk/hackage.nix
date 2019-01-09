{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "friendly-time"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Print time information in friendly ways";
      description = "Print time information in friendly ways";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.time) (hsPkgs.old-locale) (hsPkgs.base) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.friendly-time)
            ];
          };
        };
      };
    }