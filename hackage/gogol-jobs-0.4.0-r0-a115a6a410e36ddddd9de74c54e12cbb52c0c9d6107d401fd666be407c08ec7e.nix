{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gogol-jobs"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Cloud Talent Solution SDK.";
      description = "Cloud Talent Solution provides the capability to create, read, update,\nand delete job postings, as well as search jobs based on keywords and\nfilters.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v3p1beta1@\nof the API.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.gogol-core) (hsPkgs.base) ]; };
      };
    }