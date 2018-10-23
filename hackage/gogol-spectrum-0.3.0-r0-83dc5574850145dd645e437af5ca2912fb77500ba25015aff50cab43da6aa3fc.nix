{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gogol-spectrum";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Spectrum Database SDK.";
      description = "API for spectrum-management functions.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1explorer@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "gogol-spectrum" = {
        depends  = [
          (hsPkgs.gogol-core)
          (hsPkgs.base)
        ];
      };
    };
  }