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
        name = "linklater";
        version = "4.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Hao Lian <hi@haolian.org>";
      homepage = "https://github.com/hlian/linklater";
      url = "";
      synopsis = "A Haskell library for the Slack API";
      description = "<https://github.com/hlian/linklater/blob/master/README.md ~please see our lovely README.md~>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.text)
          (hsPkgs.uri-bytestring)
          (hsPkgs.wai)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "linklater-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.uri-bytestring)
            (hsPkgs.wai)
            (hsPkgs.wreq)
            (hsPkgs.linklater)
          ];
        };
      };
    };
  }