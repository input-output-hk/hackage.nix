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
        name = "gogol-replicapool";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Compute Engine Instance Group Manager SDK.";
      description = "[Deprecated. Please use Instance Group Manager in Compute API] Provides\ngroups of homogenous Compute Engine instances.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta2@\nof the API.\n\nLabels:\n\n* Limited Availability";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.gogol-core)
          (hsPkgs.base)
        ];
      };
    };
  }