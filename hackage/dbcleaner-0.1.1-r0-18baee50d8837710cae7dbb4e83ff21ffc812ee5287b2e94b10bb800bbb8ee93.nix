{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dbcleaner"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "hackage@stackbuilders.com";
      author = "Stack Builders";
      homepage = "";
      url = "";
      synopsis = "Clean database tables automatically around hspec tests";
      description = "A simple database cleaner library for testing that provides\ndifferent cleanup strategies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.postgresql-simple) (hsPkgs.text) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.text)
            ];
          };
        };
      };
    }