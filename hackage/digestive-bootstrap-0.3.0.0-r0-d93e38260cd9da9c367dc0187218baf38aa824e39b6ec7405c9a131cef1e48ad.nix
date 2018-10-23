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
        name = "digestive-bootstrap";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 - 2016 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "";
      url = "";
      synopsis = "Speed up form designing using digestive functors and bootstrap";
      description = "Generate bootstrap forms out of digestive views";
      buildType = "Simple";
    };
    components = {
      "digestive-bootstrap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.digestive-functors-blaze)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-bootstrap)
          (hsPkgs.http-types)
          (hsPkgs.text)
        ];
      };
    };
  }