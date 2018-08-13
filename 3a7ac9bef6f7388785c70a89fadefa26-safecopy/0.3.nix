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
        name = "safecopy";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "Binary serialization with version control.";
      description = "An extension to Data.Binary with built-in version control.";
      buildType = "Simple";
    };
    components = {
      "safecopy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ];
      };
    };
  }