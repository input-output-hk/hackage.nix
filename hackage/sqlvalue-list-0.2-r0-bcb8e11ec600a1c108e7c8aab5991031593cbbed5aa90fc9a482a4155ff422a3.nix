{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sqlvalue-list"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Yuriy Iskra";
      maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
      author = "YuriyIskra";
      homepage = "";
      url = "";
      synopsis = "Class and instances for conversion to list of SqlValue.";
      description = "Class and instances for conversion to list of SqlValue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.convertible)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }