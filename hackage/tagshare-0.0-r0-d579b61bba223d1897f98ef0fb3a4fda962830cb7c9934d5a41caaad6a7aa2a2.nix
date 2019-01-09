{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tagshare"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "TagShare - explicit sharing with tags";
      description = "TagShare supplies a monad for sharing values based on tags\nand types. Each tag and type is bound to at most one value\nin a dynamic map.\n\nThe principal use of this package is to ensure that\nconstant class members or other overloaded values are\nshared.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.containers) ];
        };
      };
    }