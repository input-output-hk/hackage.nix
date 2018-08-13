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
        name = "OpenAFP";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "IBM AFP document format parser and generator";
      description = "IBM AFP document format parser and generator";
      buildType = "Simple";
    };
    components = {
      "OpenAFP" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          (hsPkgs.regex-compat)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }