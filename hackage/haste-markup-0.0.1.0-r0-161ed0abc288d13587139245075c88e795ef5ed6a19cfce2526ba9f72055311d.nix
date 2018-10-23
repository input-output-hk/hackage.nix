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
        name = "haste-markup";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "http://github.com/ajnsit/haste-markup";
      url = "";
      synopsis = "A port of blaze-markup and blaze-html to Haste";
      description = "A port of blaze-markup and blaze-html to Haste.\nIn particular, this removes the bytestring and text dependencies, and replaces Text with JSString.";
      buildType = "Simple";
    };
    components = {
      "haste-markup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.haste-lib)
        ];
      };
    };
  }