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
      specVersion = "1.14";
      identifier = {
        name = "hGelf";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Andy Georges";
      maintainer = "itkovian@gmail.com";
      author = "Andy Georges";
      homepage = "";
      url = "";
      synopsis = "Haskell GELF library";
      description = "Library for sending messages in the GELF format to a server accepting Graylog2 Extended Log Format messages.";
      buildType = "Simple";
    };
    components = {
      "hGelf" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.zlib)
          (hsPkgs.cereal)
          (hsPkgs.pureMD5)
        ];
      };
    };
  }