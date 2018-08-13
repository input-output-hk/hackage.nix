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
        name = "unitym";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Brian Hurt";
      maintainer = "bhurt42@gmail.com";
      author = "Brian Hurt";
      homepage = "https://github.com/bhurt/unitym#readme";
      url = "";
      synopsis = "A monad type class shared between web services";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "unitym" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }