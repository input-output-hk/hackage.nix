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
        name = "haxl-amazonka";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "http://github.com/tvh/haxl-amazonka#readme";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haxl)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.async)
          (hsPkgs.transformers)
          (hsPkgs.hashable)
          (hsPkgs.conduit)
        ];
      };
    };
  }