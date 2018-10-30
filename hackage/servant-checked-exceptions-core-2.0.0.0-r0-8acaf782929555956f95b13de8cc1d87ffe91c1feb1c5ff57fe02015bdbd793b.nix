{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexample = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-checked-exceptions-core";
        version = "2.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-checked-exceptions";
      url = "";
      synopsis = "Checked exceptions for Servant APIs.";
      description = "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.servant)
          (hsPkgs.servant-docs)
          (hsPkgs.text)
          (hsPkgs.world-peace)
        ];
      };
      exes = {
        "servant-checked-exceptions-example-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.servant)
            (hsPkgs.servant-checked-exceptions-core)
            (hsPkgs.servant-docs)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "servant-checked-exceptions-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }