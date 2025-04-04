{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.4";
      identifier = { name = "libvirt-hs"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "https://github.com/portnov/libvirt-hs";
      url = "";
      synopsis = "FFI bindings to libvirt virtualization API (http://libvirt.org)";
      description = "This package provides low-level (at this moment, at least) FFI bindings to libvirt library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libvirt" or (errorHandler.pkgConfDepError "libvirt"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cpphs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "cpphs:c2hs")))
        ];
        buildable = true;
      };
    };
  }