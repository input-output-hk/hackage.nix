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
        name = "glue-example";
        version = "0.4.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "";
      url = "";
      synopsis = "Make better services and clients.";
      description = "Examples of the use of glue library functionality.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "glue-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.glue-common)
            (hsPkgs.glue-core)
            (hsPkgs.glue-ekg)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.time)
            (hsPkgs.monad-control)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.ekg-core)
            (hsPkgs.text)
            (hsPkgs.monad-loops)
            (hsPkgs.async)
          ];
        };
      };
    };
  }