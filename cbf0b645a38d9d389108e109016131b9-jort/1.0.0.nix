{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "jort";
        version = "1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "JP's own ray tracer";
      description = "A real-time raytracer in Haskell. No kidding.\n(Vintage: my first Haskell project)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jort" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.gtk)
          ];
        };
      };
    };
  }