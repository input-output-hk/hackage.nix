{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gogol-dfareporting"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google DCM/DFA Reporting And Trafficking SDK.";
      description = "Manage your DoubleClick Campaign Manager ad campaigns and reports.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2.2@\nof the API.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.gogol-core) (hsPkgs.base) ]; };
      };
    }