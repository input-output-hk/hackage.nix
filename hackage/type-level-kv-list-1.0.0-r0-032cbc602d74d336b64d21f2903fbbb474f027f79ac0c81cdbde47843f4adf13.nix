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
        name = "type-level-kv-list";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "2016 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/type-level-kv-list#readme";
      url = "";
      synopsis = "A module for hash map like object with type level keys.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "type-level-kv-list-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-level-kv-list)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.type-level-kv-list)
          ];
        };
      };
    };
  }