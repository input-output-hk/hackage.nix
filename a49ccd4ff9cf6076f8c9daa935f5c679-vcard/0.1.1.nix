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
      specVersion = "1.2.0";
      identifier = {
        name = "vcard";
        version = "0.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2008. Mathieu Boespflug <mboes@tweag.net>";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://code.haskell.org/~mboes/vcard.git";
      url = "";
      synopsis = "A library for parsing/printing vCards from/to various formats.";
      description = "A library for parsing\\/printing vCards from\\/to various formats.\nCurrently only vCard 3.0 defined in RFC 2426 is supported.";
      buildType = "Simple";
    };
    components = {
      "vcard" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mime-directory)
        ];
      };
    };
  }