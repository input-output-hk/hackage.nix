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
        name = "hjsonschema";
        version = "0.8.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@housejeffries.com";
      author = "Ian Grant Jeffries";
      homepage = "https://github.com/seagreen/hjsonschema";
      url = "";
      synopsis = "JSON Schema library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hjsonschema" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.hjsonpointer)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.regexpr)
          (hsPkgs.scientific)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hjsonschema)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
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
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hjsonschema)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.wai-app-static)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }