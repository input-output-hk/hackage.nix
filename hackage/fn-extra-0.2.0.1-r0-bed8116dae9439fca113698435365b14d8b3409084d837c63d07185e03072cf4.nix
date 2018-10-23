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
        name = "fn-extra";
        version = "0.2.0.1";
      };
      license = "ISC";
      copyright = "2015 Daniel Patterson";
      maintainer = "Daniel Patterson <dbp@dbpmail.net>";
      author = "Daniel Patterson <dbp@dbpmail.net>";
      homepage = "http://github.com/dbp/fn#readme";
      url = "";
      synopsis = "Extras for Fn, a functional web framework.";
      description = "Please see README.";
      buildType = "Simple";
    };
    components = {
      "fn-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.heist)
          (hsPkgs.xmlhtml)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.wai-util)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.either)
          (hsPkgs.fn)
        ];
      };
    };
  }