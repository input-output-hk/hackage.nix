{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "beam-newtype-field"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/dbfield#readme";
      url = "";
      synopsis = "A newtype for wrapping newtypes into beam schemas";
      description = "Please see the README on GitHub at <https://github.com/jappeace/dbfield#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.beam-migrate)
          (hsPkgs.lens)
          (hsPkgs.postgresql-simple)
          ];
        };
      };
    }