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
        name = "hjsonschema";
        version = "0.5.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@housejeffries.com";
      author = "Ian Grant Jeffries";
      homepage = "https://github.com/seagreen/hjsonschema";
      url = "";
      synopsis = "JSON Schema Draft 4 library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hjsonschema" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.hjsonpointer)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.regexpr)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "main" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hjsonschema)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "local" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hjsonschema)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "remote" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hjsonschema)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }