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
        name = "snaplet-oauth";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Haisheng,Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "snaplet-oauth";
      description = "This lib is in Alpha status and APIs are likely to be changed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-lens)
          (hsPkgs.text)
          (hsPkgs.bytestring-show)
          (hsPkgs.aeson)
          (hsPkgs.data-lens-template)
          (hsPkgs.failure)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.snap-loader-dynamic)
          (hsPkgs.snap-loader-static)
          (hsPkgs.heist)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.hoauth2)
        ];
      };
      tests = {
        "oauth-unit-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-show)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.snaplet-oauth)
          ];
        };
      };
    };
  }