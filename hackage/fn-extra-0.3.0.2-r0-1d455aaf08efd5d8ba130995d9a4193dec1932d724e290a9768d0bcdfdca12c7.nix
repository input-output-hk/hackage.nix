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
        name = "fn-extra";
        version = "0.3.0.2";
      };
      license = "ISC";
      copyright = "2016 Position Development, LLC";
      maintainer = "workers@positiondev.com";
      author = "Daniel Patterson <dbp@dbpmail.net>";
      homepage = "http://github.com/positiondev/fn#readme";
      url = "";
      synopsis = "Extras for Fn, a functional web framework.";
      description = "Please see README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.heist)
          (hsPkgs.xmlhtml)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.wai-util)
          (hsPkgs.wai-extra)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.digestive-functors)
          (hsPkgs.fn)
          (hsPkgs.map-syntax)
        ];
      };
    };
  }