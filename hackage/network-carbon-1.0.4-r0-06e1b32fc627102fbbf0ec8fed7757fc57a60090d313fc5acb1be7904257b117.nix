{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-carbon";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/network-carbon";
      url = "";
      synopsis = "A Haskell implementation of the Carbon protocol (part of the Graphite monitoring tools)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "network-carbon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
    };
  }