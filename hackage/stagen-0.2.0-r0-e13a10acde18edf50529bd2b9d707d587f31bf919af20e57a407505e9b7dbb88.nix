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
        name = "stagen";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Static site generator";
      description = "Low dependency static site generator using markdown";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.feed)
          (hsPkgs.filemanip)
          (hsPkgs.json-feed)
          (hsPkgs.lucid)
          (hsPkgs.markdown)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.xml)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
        ];
      };
      exes = {
        "stagen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stagen)
          ];
        };
      };
    };
  }