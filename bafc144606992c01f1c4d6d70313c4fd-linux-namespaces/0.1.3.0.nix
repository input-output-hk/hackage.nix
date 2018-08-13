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
        name = "linux-namespaces";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hs-linux-namespaces";
      url = "";
      synopsis = "Work with linux namespaces: create new or enter existing ones";
      description = "This library provides bindings to the @unshare(2)@ and @setns(2)@ linux\nsystem calls.";
      buildType = "Simple";
    };
    components = {
      "linux-namespaces" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }