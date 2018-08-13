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
      specVersion = "1.2";
      identifier = {
        name = "json2yaml";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/json2yaml/tree/master";
      url = "";
      synopsis = "Utility to convert a file from JSON to YAML format.";
      description = "Uses the yaml package, which is built off of libyaml.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "json2yaml" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }