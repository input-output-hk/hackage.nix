{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morph"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tho.feron@gmail.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "A simple database migrator for PostgreSQL";
      description = "Morph is a tool to migrate your PostgreSQL databases\nsafely which supports rollbacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.postgresql-simple)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      exes = { "morph" = { depends = [ (hsPkgs.base) (hsPkgs.morph) ]; }; };
      };
    }