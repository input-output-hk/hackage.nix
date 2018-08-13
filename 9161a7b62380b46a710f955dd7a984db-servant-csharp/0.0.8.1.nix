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
        name = "servant-csharp";
        version = "0.0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "cutsea110";
      homepage = "https://github.com/cutsea110/servant-csharp.git";
      url = "";
      synopsis = "Generate servant client library for C#";
      description = "Generate servant client library for C#";
      buildType = "Simple";
    };
    components = {
      "servant-csharp" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.heredocs)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-foreign)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.uuid-types)
        ];
      };
    };
  }