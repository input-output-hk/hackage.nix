{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
      gnu = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unix-fcntl";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/unix-fcntl";
      url = "";
      synopsis = "Comprehensive bindings to fcntl(2)";
      description = "Comprehensive bindings to fcntl(2)";
      buildType = "Simple";
    };
    components = {
      "unix-fcntl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.foreign-var)
        ];
      };
      exes = {
        "record-lock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foreign-var)
            (hsPkgs.unix)
            (hsPkgs.unix-fcntl)
          ];
        };
      };
    };
  }