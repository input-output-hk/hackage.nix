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
        name = "fedora-packages";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/CodeBlock/fedora-packages-hs";
      url = "";
      synopsis = "Haskell interface to the Fedora Packages webapp API.";
      description = "Provides access to the (<https://apps.fedoraproject.org/packages/ Fedora Packages>) API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.io-streams)
          (hsPkgs.lens)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hunit" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-streams)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.io-streams)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.hspec)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }