{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "diagrams";
        version = "0.2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/diagrams";
      url = "";
      synopsis = "An EDSL for creating simple diagrams";
      description = "An embedded domain-specific language (EDSL) for\ncreating simple diagrams, built on top of the Cairo\nrendering engine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.cairo)
          (hsPkgs.colour)
        ];
      };
    };
  }