{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dropbox-sdk";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Kannan Goundan <kannan@dropbox.com>";
      author = "Kannan Goundan <kannan@dropbox.com>";
      homepage = "http://github.com/cakoose/dropbox-sdk-haskell";
      url = "";
      synopsis = "A library to access the Dropbox HTTP API.";
      description = "A (very preliminary) library to access the Dropbox HTTP API:\n<https://www.dropbox.com/developers/reference/api>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.utf8-string)
          (hsPkgs.urlencoded)
          (hsPkgs.json)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.monad-control)
          (hsPkgs.blaze-builder)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.certificate)
          (hsPkgs.pem)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }