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
      specVersion = "1.8";
      identifier = {
        name = "quandl-api";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Peter van den Brand";
      maintainer = "Peter van den Brand <peter@vdbrand.nl>";
      author = "Peter van den Brand <peter@vdbrand.nl>";
      homepage = "https://github.com/pvdbrand/quandl-api";
      url = "";
      synopsis = "Quandl.com API library";
      description = "This library provides an easy way to download data from Quandl.com.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.unordered-containers)
          (hsPkgs.time-locale-compat)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.syb)
          (hsPkgs.aeson)
        ];
      };
    };
  }