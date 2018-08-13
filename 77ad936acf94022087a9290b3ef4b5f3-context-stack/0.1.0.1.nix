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
      specVersion = "1.10";
      identifier = {
        name = "context-stack";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ithinkican@gmail.com";
      author = "Allen Nelson";
      homepage = "http://github.com/thinkpad20/context-stack";
      url = "";
      synopsis = "An abstraction of a stack and stack-based monadic context.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "context-stack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }