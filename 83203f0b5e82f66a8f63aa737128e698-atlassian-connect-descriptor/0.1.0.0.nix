{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.20";
      identifier = {
        name = "atlassian-connect-descriptor";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "Code that helps you create a valid Atlassian Connect Descriptor.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "atlassian-connect-descriptor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time-units)
          (hsPkgs.cases)
          (hsPkgs.unordered-containers)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
      tests = {
        "test-descriptor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time-units)
            (hsPkgs.cases)
            (hsPkgs.unordered-containers)
          ] ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ];
        };
      };
    };
  }