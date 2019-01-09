{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "machines-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Claudio Zanasi";
      maintainer = "claudio.zan@outlook.com";
      author = "Claudio Zanasi";
      homepage = "";
      url = "";
      synopsis = "ByteString support for machines";
      description = "@machines@ utilities to work with @ByteString@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.machines) ];
        };
      };
    }