{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "preamble"; version = "0.0.5"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/preamble";
      url = "";
      synopsis = "Yet another prelude.";
      description = "Yet another prelude, built on BasicPrelude.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-manipulate)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "shake-preamble" = {
          depends = [ (hsPkgs.base) (hsPkgs.basic-prelude) (hsPkgs.shake) ];
          };
        };
      };
    }