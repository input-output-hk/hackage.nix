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
        name = "gogol-taskqueue";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google TaskQueue SDK.";
      description = "Lets you access a Google App Engine Pull Task Queue over REST.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta2@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "gogol-taskqueue" = {
        depends  = [
          (hsPkgs.gogol-core)
          (hsPkgs.base)
        ];
      };
    };
  }