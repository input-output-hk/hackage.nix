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
        name = "webapp";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Nathaniel Symer";
      maintainer = "Nathaniel Symer <nate@symer.io>";
      author = "Nathaniel Symer <nate@symer.io>";
      homepage = "https://github.com/fhsjaagshs/webapp";
      url = "";
      synopsis = "Haskell web app framework based on WAI & Warp";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.network)
          (hsPkgs.streaming-commons)
          (hsPkgs.regex-posix)
          (hsPkgs.http-types)
          (hsPkgs.unix)
          (hsPkgs.blaze-builder)
          (hsPkgs.zlib)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }