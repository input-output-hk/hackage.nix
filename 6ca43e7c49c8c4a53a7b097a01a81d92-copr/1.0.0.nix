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
        name = "copr";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/CodeBlock/copr-hs";
      url = "";
      synopsis = "Haskell interface to the Fedora Copr system";
      description = "This provides a Haskell interface to the Fedora Copr public build system.";
      buildType = "Simple";
    };
    components = {
      "copr" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-streams)
          (hsPkgs.io-streams)
          (hsPkgs.semigroups)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }