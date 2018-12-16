{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "selda-sqlite";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "SQLite backend for the Selda database EDSL.";
      description = "SQLite backend for the Selda database EDSL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.selda)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!flags.haste) (hsPkgs.direct-sqlite);
      };
    };
  }