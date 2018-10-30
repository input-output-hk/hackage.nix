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
      specVersion = "1.22";
      identifier = {
        name = "warped";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "Copyright (C) 2018 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/warped";
      url = "";
      synopsis = "Warp and Wai Library.";
      description = "Library support around WAI and warp server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.http-types)
          (hsPkgs.lifted-async)
          (hsPkgs.monad-control)
          (hsPkgs.preamble)
          (hsPkgs.uuid)
          (hsPkgs.wai)
          (hsPkgs.wai-conduit)
          (hsPkgs.wai-cors)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "shake-wolf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shakers)
          ];
        };
      };
    };
  }