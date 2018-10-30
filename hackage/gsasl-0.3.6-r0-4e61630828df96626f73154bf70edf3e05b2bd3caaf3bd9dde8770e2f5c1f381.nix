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
      specVersion = "1.6";
      identifier = {
        name = "gsasl";
        version = "0.3.6";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/haskell-gsasl/";
      url = "";
      synopsis = "Bindings for GNU libgsasl";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
        ];
        pkgconfig = [
          (pkgconfPkgs.libgsasl)
        ];
      };
    };
  }