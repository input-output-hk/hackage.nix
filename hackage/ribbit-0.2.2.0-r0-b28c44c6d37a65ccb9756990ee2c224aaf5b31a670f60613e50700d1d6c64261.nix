{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ribbit"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "2019 Owens Murray, LLC.";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/ribbit";
      url = "";
      synopsis = "ribbit";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Only)
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }