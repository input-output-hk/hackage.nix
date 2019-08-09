{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "DataVersion"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Sandy Maguire, James King";
      maintainer = "james@agentultra.com";
      author = "Sandy Maguire, James King";
      homepage = "https://github.com/agentultra/DataMigration#readme";
      url = "";
      synopsis = "Type safe data migrations";
      description = "Please see the README on GitHub at <https://github.com/agentultra/DataMigration#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.generic-lens) (hsPkgs.microlens) ];
        };
      tests = {
        "DataVersion-test" = {
          depends = [
            (hsPkgs.DataVersion)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }