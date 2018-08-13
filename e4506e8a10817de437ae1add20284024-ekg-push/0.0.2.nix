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
      specVersion = "1.18";
      identifier = {
        name = "ekg-push";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.darqui@gmail.com";
      author = "Andrew Darqui";
      homepage = "https://github.com/adarqui/ekg-push";
      url = "";
      synopsis = "Small framework to push metric deltas to a broadcast channel using the ekg-core library.";
      description = "This library lets you push metric samples to a broadcast channel. Consumers can then persist the samples as they wish.";
      buildType = "Simple";
    };
    components = {
      "ekg-push" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ekg-core)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "basic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ekg-core)
            (hsPkgs.ekg-push)
          ];
        };
      };
    };
  }