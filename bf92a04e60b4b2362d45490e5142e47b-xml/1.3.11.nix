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
        name = "xml";
        version = "1.3.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Galois Inc.";
      maintainer = "diatchki@galois.com";
      author = "Galois Inc.";
      homepage = "http://code.galois.com";
      url = "";
      synopsis = "A simple XML library.";
      description = "A simple XML library.";
      buildType = "Simple";
    };
    components = {
      "xml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }