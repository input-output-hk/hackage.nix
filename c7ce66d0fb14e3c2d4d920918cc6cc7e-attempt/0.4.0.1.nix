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
      specVersion = "1.2";
      identifier = {
        name = "attempt";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/attempt/tree/master";
      url = "";
      synopsis = "Concrete data type for handling extensible exceptions as failures. (deprecated)";
      description = "Please use the exceptions package instead";
      buildType = "Simple";
    };
    components = {
      "attempt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.failure)
        ];
      };
    };
  }