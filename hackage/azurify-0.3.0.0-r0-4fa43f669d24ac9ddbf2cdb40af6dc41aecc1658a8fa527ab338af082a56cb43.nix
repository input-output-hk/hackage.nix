{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      no-hxt = false;
      library-only = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "azurify";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "arno@vanlumig.com";
      author = "Arno van Lumig";
      homepage = "http://arnovanlumig.com/azure";
      url = "";
      synopsis = "A simple library for accessing Azure blob storage";
      description = "An interface for a few basic functions of the Microsoft Azure blob storage. Creating and deleting containers as well as uploading, downloading and breaking leases of blobs is supported.";
      buildType = "Simple";
    };
    components = {
      "azurify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.network)
          (hsPkgs.http-date)
          (hsPkgs.time)
          (hsPkgs.SHA)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.utf8-string)
          (hsPkgs.old-locale)
        ] ++ pkgs.lib.optional (!flags.no-hxt) (hsPkgs.hxt);
      };
      exes = {
        "azurify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.data-default)
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
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
          ] ++ pkgs.lib.optional (!flags.no-hxt) (hsPkgs.hxt);
        };
      };
    };
  }