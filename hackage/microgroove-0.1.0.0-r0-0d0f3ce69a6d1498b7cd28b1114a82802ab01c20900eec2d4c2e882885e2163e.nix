{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "microgroove"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dai";
      maintainer = "dai@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/microgroove";
      url = "";
      synopsis = "Array-backed extensible records";
      description = "Array-backed extensible records, providing fast access and mutation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector) (hsPkgs.primitive) ];
        };
      };
    }