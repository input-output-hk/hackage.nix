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
        name = "context-stack";
        version = "0.1.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
          (hsPkgs.data-default)
        ];
      };
    };
  }