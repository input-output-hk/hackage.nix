{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "atlassian-connect-descriptor";
        version = "0.3.0.0";
        };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "Code that helps you create a valid Atlassian Connect Descriptor.";
      description = "Allows you to generate an Atlassian Connect Descriptor in a typesafe manner and easily convert it\nit into JSON using the fantastic Aeson library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time-units)
          (hsPkgs.cases)
          (hsPkgs.unordered-containers)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      tests = {
        "test-descriptor" = {
          depends = [
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
            (hsPkgs.bytestring)
            ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
          };
        };
      };
    }