{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { safe-aeson = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsonschema-gen";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Shohei Murayama <shohei.murayama@gmail.com>";
      maintainer = "shohei.murayama@gmail.com";
      author = "Shohei Murayama";
      homepage = "https://github.com/yuga/jsonschema-gen";
      url = "";
      synopsis = "JSON Schema generator from Algebraic data type";
      description = "This library contains a JSON Schema generator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ [
          (hsPkgs.aeson)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.jsonschema-gen)
            (hsPkgs.process)
            (hsPkgs.tagged)
            (hsPkgs.text)
          ];
        };
      };
    };
  }