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
        name = "haxl-facebook";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 (C) 2014 Facebook, Inc.";
      maintainer = "The Haxl Team <haxl-team@fb.com>";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebook/Haxl";
      url = "";
      synopsis = "An example Haxl data source for accessing the\nFacebook Graph API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.fb)
          (hsPkgs.http-conduit)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.hashable)
          (hsPkgs.data-default)
          (hsPkgs.http-client-tls)
          (hsPkgs.time)
          (hsPkgs.conduit)
          (hsPkgs.async)
          (hsPkgs.haxl)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.fb)
            (hsPkgs.http-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hashable)
            (hsPkgs.data-default)
            (hsPkgs.http-client-tls)
            (hsPkgs.time)
            (hsPkgs.conduit)
            (hsPkgs.async)
            (hsPkgs.haxl)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }