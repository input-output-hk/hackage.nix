{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "cedict";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Convenient Chinese character lookup.";
      description = "Convenient Chinese character lookup.";
      buildType = "Custom";
    };
    components = {
      "cedict" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "zi4pu3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }