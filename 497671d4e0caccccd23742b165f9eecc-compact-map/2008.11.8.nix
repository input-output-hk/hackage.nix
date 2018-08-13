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
        name = "compact-map";
        version = "2008.11.8";
      };
      license = "BSD-3-Clause";
      copyright = "2008 David Himmelstrup <lemmih@gmail.com>";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Compact Data.Map implementation using Data.Binary";
      description = "This library attempts to provide a memory efficient alternative to\nData.Map.";
      buildType = "Simple";
    };
    components = {
      "compact-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }