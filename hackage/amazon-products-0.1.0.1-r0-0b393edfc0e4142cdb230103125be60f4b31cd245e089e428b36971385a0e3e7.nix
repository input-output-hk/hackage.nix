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
        name = "amazon-products";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrewrademacher@gmail.com";
      author = "Andrew Rademacher";
      homepage = "https://github.com/AndrewRademacher/hs-amazon-products";
      url = "";
      synopsis = "Connector for Amazon Products API";
      description = "Allows users to directly access Amazon Products API,\nwithout having to work with the underlying REST and\nauthentication layers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.xml-picklers)
          (hsPkgs.xml-conduit)
          (hsPkgs.http-types)
          (hsPkgs.base64-bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.byteable)
        ];
      };
      exes = {
        "repl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.http-conduit)
            (hsPkgs.amazon-products)
          ];
        };
      };
    };
  }