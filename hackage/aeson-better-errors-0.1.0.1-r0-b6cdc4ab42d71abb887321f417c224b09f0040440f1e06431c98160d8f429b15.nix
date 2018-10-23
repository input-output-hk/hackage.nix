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
        name = "aeson-better-errors";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "harry@garrood.me";
      author = "Harry Garrood";
      homepage = "https://github.com/hdgarrood/aeson-better-errors";
      url = "";
      synopsis = "Better error messages when decoding JSON values.";
      description = "A small package which gives you the tools to build parsers to decode JSON\nvalues, and gives good error messages when parsing fails.\nSee also <http://harry.garrood.me/blog/aeson-better-errors/>.";
      buildType = "Simple";
    };
    components = {
      "aeson-better-errors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.dlist)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }