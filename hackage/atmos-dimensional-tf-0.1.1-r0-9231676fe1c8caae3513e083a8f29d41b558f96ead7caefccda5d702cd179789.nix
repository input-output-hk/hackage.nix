{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "atmos-dimensional-tf"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "dimensional-tf wrapper on atmos package";
      description = "1976 US Standard Atmosphere with dimensions from dimensional-tf package.\n\nThis is a thin wrapper on top of the atmos package.\n\nI recommend using the atmos-dimensional package instead of this until atmos-dimensional-tf is more stable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.atmos) (hsPkgs.dimensional-tf) ];
        };
      };
    }