{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-pandoc";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Pickering, Ivan Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Use Pandoc to render servant API documentation";
      description = "Use pandoc to generate documentation for your Servant API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.pandoc-types)
          (hsPkgs.servant-docs)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.string-conversions)
          (hsPkgs.case-insensitive)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
    };
  }