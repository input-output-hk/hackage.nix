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
      specVersion = "1.8";
      identifier = {
        name = "netspec";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Dan Burton";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "http://github.com/DanBurton/netspec";
      url = "";
      synopsis = "Simplify static Networking tasks";
      description = "A Networking library for static Networking tasks.\n\nTo learn about how to use this library in general,\nsee <http://github.com/DanBurton/netspec#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }