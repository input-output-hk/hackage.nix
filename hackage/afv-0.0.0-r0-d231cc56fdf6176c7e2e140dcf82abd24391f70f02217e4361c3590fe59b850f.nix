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
      specVersion = "1.6";
      identifier = {
        name = "afv";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "Model checking Atom generated C.";
      description = "A model checker for Atom generated, or similar, C code.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "afv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.language-c)
            (hsPkgs.yices)
          ];
        };
      };
    };
  }