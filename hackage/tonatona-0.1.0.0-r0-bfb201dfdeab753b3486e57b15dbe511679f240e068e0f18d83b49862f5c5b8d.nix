{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tonatona"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "meta application framework";
      description = "Tonatona is a **meta** application framework. It handles lots of boring tasks that are needed for real-world development such as reading in values defined in environment variables, setting up logging, sending emails, accessing databases, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.rio) (hsPkgs.tonaparser) ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        };
      };
    }