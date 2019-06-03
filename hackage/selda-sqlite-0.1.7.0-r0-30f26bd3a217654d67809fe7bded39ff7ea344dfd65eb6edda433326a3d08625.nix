{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "selda-sqlite"; version = "0.1.7.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "SQLite backend for the Selda database EDSL.";
      description = "Allows the Selda database EDSL to be used with SQLite\ndatabases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.selda)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optionals (!flags.haste) [
          (hsPkgs.bytestring)
          (hsPkgs.direct-sqlite)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.time)
          (hsPkgs.uuid-types)
          ];
        };
      };
    }