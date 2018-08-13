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
        name = "uploadcare";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Dimitry Solovyov <dimituri@gmail.com>";
      author = "Dimitry Solovyov <dimituri@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Uploadcare.";
      description = "Haskell client for the Uploadcare API.\nUploadcare handles file uploads and storage for you,\nwhile you focus on other important things.\n<http://uploadcare.com/>";
      buildType = "Simple";
    };
    components = {
      "uploadcare" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.hex)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
    };
  }