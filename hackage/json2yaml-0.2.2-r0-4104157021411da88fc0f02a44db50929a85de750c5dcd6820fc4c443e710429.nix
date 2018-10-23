{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "json2yaml";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/json2yaml/tree/master";
      url = "";
      synopsis = "Utility to convert a file from JSON to YAML format.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "json2yaml" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-object-yaml)
            (hsPkgs.data-object-json)
            (hsPkgs.bytestring)
            (hsPkgs.attempt)
          ];
        };
      };
    };
  }