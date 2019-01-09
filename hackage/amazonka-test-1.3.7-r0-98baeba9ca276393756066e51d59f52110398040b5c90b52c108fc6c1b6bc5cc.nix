{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-test"; version = "1.3.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Common functionality for Amazonka library test-suites.";
      description = "Common functionality depended upon by test suites of the various @amazonka-*@\nservice libraries.\n\nThe external interface of this library is stable with respect to the\ndownstream Amazonka libraries, only, and as such is not suitable\nfor use in non-Amazonka projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.groom)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      };
    }