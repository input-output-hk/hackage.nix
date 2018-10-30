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
        name = "gogol-debugger";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Cloud Debugger SDK.";
      description = "Lets you examine the stack and variables of your running application\nwithout stopping or slowing it down.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.gogol-core)
          (hsPkgs.base)
        ];
      };
    };
  }