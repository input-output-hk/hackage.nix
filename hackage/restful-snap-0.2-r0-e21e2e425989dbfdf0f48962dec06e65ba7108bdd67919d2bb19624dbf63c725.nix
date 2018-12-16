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
        name = "restful-snap";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/ozataman/restful-snap";
      url = "";
      synopsis = "";
      description = "A convention-based RESTful routing mechanism for snap";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.digestive-functors)
          (hsPkgs.heist)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.readable)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.snap-extras)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xmlhtml)
          (hsPkgs.errors)
        ];
      };
    };
  }