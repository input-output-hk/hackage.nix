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
        name = "bliplib";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Bernie Pope";
      homepage = "https://github.com/bjpop/blip";
      url = "";
      synopsis = "Support code for Blip.";
      description = "Support code for the Blip compiler. In particular, a library for reading, writing and manipulating Python 3 bytecode files.";
      buildType = "Simple";
    };
    components = {
      "bliplib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }