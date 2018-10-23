{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "delicious";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Galois, Inc.";
      maintainer = "Sigbjorn Finne <sof@galois.com>";
      author = "Sigbjorn Finne <sof@galois.com>";
      homepage = "http://galois.com";
      url = "";
      synopsis = "Accessing the del.icio.us APIs from Haskell (v2)";
      description = "Access to the del.icio.us social tagging site's API(v2) from Haskell";
      buildType = "Simple";
    };
    components = {
      "delicious" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.feed)
          (hsPkgs.curl)
          (hsPkgs.bytestring)
          (hsPkgs.nano-md5)
          (hsPkgs.json)
        ];
      };
    };
  }