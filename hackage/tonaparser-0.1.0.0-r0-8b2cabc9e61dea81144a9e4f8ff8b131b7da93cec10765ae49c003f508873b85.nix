{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tonaparser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "Scalable way to pass runtime configurations for tonatona";
      description = "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @tonatona@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.envy) (hsPkgs.rio) (hsPkgs.say) ];
        };
      exes = {
        "tonaparser-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.envy)
            (hsPkgs.rio)
            (hsPkgs.say)
            (hsPkgs.tonaparser)
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.envy)
            (hsPkgs.rio)
            (hsPkgs.say)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.envy)
            (hsPkgs.rio)
            (hsPkgs.say)
            (hsPkgs.tonatona)
            ];
          };
        };
      };
    }