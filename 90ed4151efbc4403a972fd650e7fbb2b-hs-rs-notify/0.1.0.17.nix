{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hs-rs-notify";
        version = "0.1.0.17";
      };
      license = "BSD-3-Clause";
      copyright = "2018 NoRedInk";
      maintainer = "christoph@noredink.com";
      author = "Christoph Hermann";
      homepage = "https://github.com/NoRedInk/hs-rs-notify#readme";
      url = "";
      synopsis = "Experimental! Wraps this awesome rust library so you can use it in haskell. https://docs.rs/crate/notify";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hs-rs-notify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.process)
        ];
      };
      exes = {
        "notify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-rs-notify)
            (hsPkgs.protolude)
          ];
          libs = [
            (pkgs.notifier)
            (pkgs.pthread)
          ];
        };
      };
      tests = {
        "hs-rs-notify-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-rs-notify)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }