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
      specVersion = "1.8";
      identifier = {
        name = "azurify";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "arno@vanlumig.com";
      author = "Arno van Lumig";
      homepage = "http://arnovanlumig.com/azurify.html";
      url = "";
      synopsis = "A simple library for accessing Azure blob storage";
      description = "An interface for a few basic functions of the Microsoft Azure blob storage. Creating and deleting containers as well as uploading, downloading and breaking leases of blobs is supported.";
      buildType = "Simple";
    };
    components = {
      "azurify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.network)
          (hsPkgs.http-date)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.SHA)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.utf8-string)
          (hsPkgs.hxt)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "azurify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.network)
            (hsPkgs.http-date)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.SHA)
            (hsPkgs.base64-bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.utf8-string)
            (hsPkgs.hxt)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }