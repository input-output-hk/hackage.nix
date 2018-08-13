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
      specVersion = "1.2";
      identifier = {
        name = "cedict";
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Convenient Chinese character lookup.";
      description = "Convenient Chinese character lookup.";
      buildType = "Simple";
    };
    components = {
      "cedict" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
      exes = { "zi4pu3" = {}; };
    };
  }