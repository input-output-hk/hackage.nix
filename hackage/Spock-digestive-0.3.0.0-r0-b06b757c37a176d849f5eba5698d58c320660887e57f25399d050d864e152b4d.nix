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
        name = "Spock-digestive";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 - 2016 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/Spock-digestive";
      url = "";
      synopsis = "Digestive functors support for Spock";
      description = "Run forms defined using digestive functors with Spock";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Spock-core)
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ];
      };
    };
  }