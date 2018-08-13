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
      specVersion = "1.6";
      identifier = {
        name = "storable";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tomas Janousek <tomi@nomi.cz>";
      author = "Tomas Janousek";
      homepage = "http://anna.fi.muni.cz/~xjanous3/gitweb/?p=storable.git;a=summary";
      url = "";
      synopsis = "Storable type class for variable-sized data";
      description = "The module \"Data.Storable\" provides an extension to the\nForeign.Storable type class adding support for variable-sized\ndata types.";
      buildType = "Simple";
    };
    components = {
      "storable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }