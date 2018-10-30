{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hlibgit2";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "sakariij@gmail.com";
      author = "Sakari Jokinen, Jacob Stanley";
      homepage = "";
      url = "";
      synopsis = "Bindings to libgit2 v0.1.0-265-gb5c5f0f";
      description = "Generated bindings to libgit2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlibgit2)
            (hsPkgs.process)
          ];
        };
      };
    };
  }