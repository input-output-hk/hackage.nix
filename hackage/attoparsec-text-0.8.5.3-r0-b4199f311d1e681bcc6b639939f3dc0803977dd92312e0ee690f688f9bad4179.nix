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
      specVersion = "1.6";
      identifier = {
        name = "attoparsec-text";
        version = "0.8.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://patch-tag.com/r/felipe/attoparsec-text/home";
      url = "";
      synopsis = "(deprecated)";
      description = "This package has been deprecated.  Now the @attoparsec@\nincludes all functionality from this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }