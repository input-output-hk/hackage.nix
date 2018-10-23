{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hastache-aeson";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vladimir Kirillov";
      maintainer = "Vladimir Kirillov <proger@hackndev.com>";
      author = "Vladimir Kirillov <proger@hackndev.com>";
      homepage = "https://github.com/proger/hastache-aeson";
      url = "";
      synopsis = "render hastache templates using aeson values";
      description = "The Module lets you render Hastache templates from aeson values. See the GitHub page for examples.";
      buildType = "Simple";
    };
    components = {
      "hastache-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hastache)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }